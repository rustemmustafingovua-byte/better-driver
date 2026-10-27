.class public final Lr/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/h2;


# instance fields
.field public final a:Li9/c;

.field public final b:Lr/l;

.field public final c:Lp/r1;

.field public final d:Lr0/e1;

.field public final e:Lr0/e1;

.field public final f:Lr0/e1;


# direct methods
.method public constructor <init>(Li9/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/m;->a:Li9/c;

    new-instance p1, Lr/l;

    invoke-direct {p1, p0}, Lr/l;-><init>(Lr/m;)V

    iput-object p1, p0, Lr/m;->b:Lr/l;

    new-instance p1, Lp/r1;

    invoke-direct {p1}, Lp/r1;-><init>()V

    iput-object p1, p0, Lr/m;->c:Lp/r1;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Lr/m;->d:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Lr/m;->e:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lr/m;->f:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lr/m;->d:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Landroidx/lifecycle/m0;

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, p3}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final e(F)F
    .locals 0

    iget-object p0, p0, Lr/m;->a:Li9/c;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method
