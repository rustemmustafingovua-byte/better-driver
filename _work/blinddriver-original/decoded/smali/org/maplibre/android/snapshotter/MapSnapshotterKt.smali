.class public final Lorg/maplibre/android/snapshotter/MapSnapshotterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final fromHTML(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    const-string v0, "source"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method
