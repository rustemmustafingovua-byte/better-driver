.class public final Lp/v;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/z1;


# instance fields
.field public B:Lp/r;

.field public C:F

.field public D:Lm1/j0;

.field public E:Lm1/h0;

.field public final F:Lj1/b;


# direct methods
.method public constructor <init>(FLm1/j0;Lm1/h0;)V
    .locals 0

    invoke-direct {p0}, Le2/k;-><init>()V

    iput p1, p0, Lp/v;->C:F

    iput-object p2, p0, Lp/v;->D:Lm1/j0;

    iput-object p3, p0, Lp/v;->E:Lm1/h0;

    new-instance p1, Lb0/a;

    const/16 p2, 0x15

    invoke-direct {p1, p2, p0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lj1/b;

    new-instance p3, Lj1/c;

    invoke-direct {p3}, Lj1/c;-><init>()V

    invoke-direct {p2, p3, p1}, Lj1/b;-><init>(Lj1/c;Li9/c;)V

    invoke-virtual {p0, p2}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object p2, p0, Lp/v;->F:Lj1/b;

    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lm2/x;)V
    .locals 0

    iget-object p0, p0, Lp/v;->E:Lm1/h0;

    invoke-static {p1, p0}, Lm2/v;->d(Lm2/x;Lm1/h0;)V

    return-void
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
