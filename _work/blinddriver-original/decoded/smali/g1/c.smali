.class public final Lg1/c;
.super Lg1/i;
.source "SourceFile"

# interfaces
.implements Lk1/j;


# instance fields
.field public final l:Lb0/l1;

.field public final m:Lm2/r;

.field public final n:Lf2/y;

.field public final o:Ln2/b;

.field public final p:Ljava/lang/String;

.field public final q:Landroid/graphics/Rect;

.field public final r:Landroid/view/autofill/AutofillId;

.field public final s:Lk/y;

.field public t:Z


# direct methods
.method public constructor <init>(Lb0/l1;Lm2/r;Lf2/y;Ln2/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/c;->l:Lb0/l1;

    iput-object p2, p0, Lg1/c;->m:Lm2/r;

    iput-object p3, p0, Lg1/c;->n:Lf2/y;

    iput-object p4, p0, Lg1/c;->o:Ln2/b;

    iput-object p5, p0, Lg1/c;->p:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lg1/c;->q:Landroid/graphics/Rect;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    invoke-virtual {p3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lg1/c;->r:Landroid/view/autofill/AutofillId;

    new-instance p1, Lk/y;

    invoke-direct {p1}, Lk/y;-><init>()V

    iput-object p1, p0, Lg1/c;->s:Lk/y;

    return-void

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(Lk1/b0;Lk1/b0;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le2/g0;->x()Lm2/m;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    sget-object v1, Lm2/l;->g:Lm2/w;

    invoke-virtual {v0, v1}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lm2/l;->h:Lm2/w;

    invoke-virtual {v0, v1}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget p1, p1, Le2/g0;->m:I

    iget-object v0, p0, Lg1/c;->l:Lb0/l1;

    iget-object v0, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iget-object v1, p0, Lg1/c;->n:Lf2/y;

    invoke-virtual {v0, v1, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    :cond_1
    if-eqz p2, :cond_4

    invoke-static {p2}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Le2/g0;->x()Lm2/m;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p2, Lm2/m;->l:Lk/m0;

    sget-object v0, Lm2/l;->g:Lm2/w;

    invoke-virtual {p2, v0}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lm2/l;->h:Lm2/w;

    invoke-virtual {p2, v0}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget p1, p1, Le2/g0;->m:I

    iget-object p2, p0, Lg1/c;->o:Ln2/b;

    iget-object p2, p2, Ln2/b;->a:Ld1/c0;

    new-instance v0, Lg1/a;

    invoke-direct {v0, p0, p1}, Lg1/a;-><init>(Lg1/c;I)V

    invoke-virtual {p2, p1, v0}, Ld1/c0;->p(ILi9/g;)V

    :cond_4
    return-void
.end method
