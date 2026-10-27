.class public abstract Lt2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt2/b;

.field public static final b:Lt2/m;

.field public static final c:Lt2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lt2/p;->a:Lt2/b;

    new-instance v0, Lt2/m;

    const-string v1, "sans-serif"

    const-string v2, "FontFamily.SansSerif"

    invoke-direct {v0, v1, v2}, Lt2/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lt2/p;->b:Lt2/m;

    new-instance v0, Lt2/m;

    const-string v1, "monospace"

    const-string v2, "FontFamily.Monospace"

    invoke-direct {v0, v1, v2}, Lt2/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lt2/p;->c:Lt2/m;

    return-void
.end method
