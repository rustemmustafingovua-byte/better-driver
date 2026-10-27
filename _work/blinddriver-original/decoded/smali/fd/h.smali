.class public final Lfd/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;


# instance fields
.field public final synthetic a:Lfd/o;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Li9/a;


# direct methods
.method public constructor <init>(Lfd/o;Ljava/util/List;Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/h;->a:Lfd/o;

    iput-object p2, p0, Lfd/h;->b:Ljava/util/List;

    iput-object p3, p0, Lfd/h;->c:Li9/a;

    return-void
.end method


# virtual methods
.method public final onDelete()V
    .locals 2

    iget-object v0, p0, Lfd/h;->b:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu8/m;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfd/h;->c:Li9/a;

    iget-object p0, p0, Lfd/h;->a:Lfd/o;

    invoke-static {p0, v0, v1}, Lfd/o;->b(Lfd/o;Ljava/util/List;Li9/a;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfd/h;->a:Lfd/o;

    invoke-virtual {v0, p1}, Lfd/o;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lfd/h;->b:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lu8/m;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lfd/h;->c:Li9/a;

    invoke-static {v0, p1, p0}, Lfd/o;->b(Lfd/o;Ljava/util/List;Li9/a;)V

    return-void
.end method
