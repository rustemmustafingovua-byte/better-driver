.class public final Lx2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq3/k;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq3/k;-><init>(IZ)V

    invoke-static {}, Lx3/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lq3/k;->h()Lr0/r2;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lq3/k;->m:Ljava/lang/Object;

    sput-object v0, Lx2/h;->a:Lq3/k;

    return-void
.end method
