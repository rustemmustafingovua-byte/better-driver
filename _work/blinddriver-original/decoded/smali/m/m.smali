.class public final Lm/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/e1;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb3/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lb3/l;-><init>(J)V

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Lm/m;->a:Lr0/e1;

    return-void
.end method
