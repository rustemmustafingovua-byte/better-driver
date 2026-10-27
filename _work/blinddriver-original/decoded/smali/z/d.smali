.class public final Lz/d;
.super Lp/a0;
.source "SourceFile"


# instance fields
.field public Y:Z


# virtual methods
.method public final P0(Lm2/x;)V
    .locals 3

    iget-boolean p0, p0, Lz/d;->Y:Z

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->I:Lm2/w;

    sget-object v1, Lm2/v;->a:[Lp9/d;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-void
.end method
