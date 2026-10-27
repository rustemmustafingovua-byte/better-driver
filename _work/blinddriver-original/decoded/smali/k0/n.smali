.class public final Lk0/n;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Le2/o;
.implements Le2/j;


# instance fields
.field public A:Lb0/r1;

.field public B:Lm0/v1;

.field public final C:Lr0/e1;

.field public z:Lk0/b;


# direct methods
.method public constructor <init>(Lk0/b;Lb0/r1;Lm0/v1;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Lk0/n;->z:Lk0/b;

    iput-object p2, p0, Lk0/n;->A:Lb0/r1;

    iput-object p3, p0, Lk0/n;->B:Lm0/v1;

    const/4 p1, 0x0

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lk0/n;->C:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 2

    iget-object v0, p0, Lk0/n;->z:Lk0/b;

    iget-object v1, v0, Lk0/b;->a:Lk0/n;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Expected textInputModifierNode to be null"

    invoke-static {v1}, Lt/b;->c(Ljava/lang/String;)V

    :goto_0
    iput-object p0, v0, Lk0/b;->a:Lk0/n;

    return-void
.end method

.method public final F0()V
    .locals 1

    iget-object v0, p0, Lk0/n;->z:Lk0/b;

    invoke-virtual {v0, p0}, Lk0/b;->k(Lk0/n;)V

    return-void
.end method

.method public final q0(Le2/h1;)V
    .locals 0

    iget-object p0, p0, Lk0/n;->C:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
