.class public final Lr/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/s1;


# instance fields
.field public final synthetic a:Lr/n2;

.field public final synthetic b:Lr/l2;


# direct methods
.method public constructor <init>(Lr/n2;Lr/l2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/j2;->a:Lr/n2;

    iput-object p2, p0, Lr/j2;->b:Lr/l2;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    iget-object v1, p0, Lr/j2;->a:Lr/n2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lr/n2;->h:Lr/b2;

    invoke-virtual {v0}, Lr/b2;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v1, p1}, Lr/n2;->h(F)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr/n2;->e(J)J

    move-result-wide v2

    const/4 p1, 0x2

    iget-object p0, p0, Lr/j2;->b:Lr/l2;

    invoke-virtual {p0, p1, v2, v3}, Lr/l2;->a(IJ)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lr/n2;->g(J)F

    move-result p0

    invoke-virtual {v1, p0}, Lr/n2;->d(F)F

    move-result p0

    return p0

    :cond_1
    new-instance p0, Lp/o1;

    const-string p1, "The fling animation was cancelled"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lb2/b;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
