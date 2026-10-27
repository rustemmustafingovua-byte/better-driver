.class public final Lb0/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/h2;


# instance fields
.field public final synthetic a:Lr/h2;

.field public final b:Lr0/d0;

.field public final c:Lr0/d0;


# direct methods
.method public constructor <init>(Lr/h2;Lb0/v2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/t2;->a:Lr/h2;

    new-instance p1, Lb0/s2;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lb0/s2;-><init>(Lb0/v2;I)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lb0/t2;->b:Lr0/d0;

    new-instance p1, Lb0/s2;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lb0/s2;-><init>(Lb0/v2;I)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lb0/t2;->c:Lr0/d0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lb0/t2;->a:Lr/h2;

    invoke-interface {p0}, Lr/h2;->a()Z

    move-result p0

    return p0
.end method

.method public final b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb0/t2;->a:Lr/h2;

    invoke-interface {p0, p1, p2, p3}, Lr/h2;->b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lb0/t2;->c:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lb0/t2;->b:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final e(F)F
    .locals 0

    iget-object p0, p0, Lb0/t2;->a:Lr/h2;

    invoke-interface {p0, p1}, Lr/h2;->e(F)F

    move-result p0

    return p0
.end method
