.class public final Lz/h;
.super Lp/a0;
.source "SourceFile"


# instance fields
.field public Y:Z

.field public Z:Li9/c;

.field public final a0:Lod/x4;


# direct methods
.method public constructor <init>(ZLs/i;ZLm2/h;Li9/c;)V
    .locals 8

    new-instance v7, Lo0/j0;

    const/4 v0, 0x1

    invoke-direct {v7, v0, p5, p1}, Lo0/j0;-><init>(ILi9/c;Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lp/g;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Lm2/h;Li9/a;)V

    iput-boolean p1, v0, Lz/h;->Y:Z

    iput-object p5, v0, Lz/h;->Z:Li9/c;

    new-instance p0, Lod/x4;

    const/16 p1, 0x13

    invoke-direct {p0, p1, v0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    iput-object p0, v0, Lz/h;->a0:Lod/x4;

    return-void
.end method


# virtual methods
.method public final P0(Lm2/x;)V
    .locals 3

    iget-boolean v0, p0, Lz/h;->Y:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo2/a;->l:Lo2/a;

    goto :goto_0

    :cond_0
    sget-object v0, Lo2/a;->m:Lo2/a;

    :goto_0
    invoke-static {p1, v0}, Lm2/v;->e(Lm2/x;Lo2/a;)V

    sget-object v0, Lm2/t;->r:Lm2/w;

    sget-object v1, Lm2/v;->a:[Lp9/d;

    const/16 v2, 0x9

    aget-object v2, v1, v2

    sget-object v2, Lg1/k;->b:Lg1/d;

    invoke-interface {p1, v0, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lz/h;->Y:Z

    new-instance v0, Lg1/f;

    invoke-static {p0}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lg1/f;-><init>(Landroid/view/autofill/AutofillValue;)V

    sget-object p0, Lm2/t;->s:Lm2/w;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance p0, Lz/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz/g;-><init>(Lm2/x;I)V

    invoke-static {p1, p0}, Lm2/v;->b(Lm2/x;Li9/c;)V

    return-void
.end method
