.class public final Lz/j;
.super Lp/a0;
.source "SourceFile"


# instance fields
.field public Y:Lo2/a;


# virtual methods
.method public final P0(Lm2/x;)V
    .locals 3

    iget-object v0, p0, Lz/j;->Y:Lo2/a;

    invoke-static {p1, v0}, Lm2/v;->e(Lm2/x;Lo2/a;)V

    sget-object v0, Lm2/t;->r:Lm2/w;

    sget-object v1, Lm2/v;->a:[Lp9/d;

    const/16 v2, 0x9

    aget-object v2, v1, v2

    sget-object v2, Lg1/k;->b:Lg1/d;

    invoke-interface {p1, v0, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object p0, p0, Lz/j;->Y:Lo2/a;

    sget-object v0, Lo2/a;->n:Lo2/a;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lg1/f;

    invoke-static {p0}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lg1/f;-><init>(Landroid/view/autofill/AutofillValue;)V

    sget-object p0, Lm2/t;->s:Lm2/w;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance p0, Lz/g;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lz/g;-><init>(Lm2/x;I)V

    invoke-static {p1, p0}, Lm2/v;->b(Lm2/x;Li9/c;)V

    return-void
.end method
