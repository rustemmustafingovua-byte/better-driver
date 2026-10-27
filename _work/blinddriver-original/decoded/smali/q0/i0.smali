.class public abstract Lq0/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp2/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v11, La3/i;

    sget v0, La3/f;->b:F

    const/4 v1, 0x0

    invoke-direct {v11, v0, v1, v1}, La3/i;-><init>(FII)V

    sget-object v0, Lp2/m0;->d:Lp2/m0;

    const-wide/16 v9, 0x0

    const v12, 0xe7ffff

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v12}, Lp2/m0;->a(Lp2/m0;JJLt2/k;Lt2/p;JJLa3/i;I)Lp2/m0;

    move-result-object v0

    sput-object v0, Lq0/i0;->a:Lp2/m0;

    return-void
.end method
