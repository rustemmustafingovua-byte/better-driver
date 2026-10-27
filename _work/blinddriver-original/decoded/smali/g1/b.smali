.class public final Lg1/b;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public final synthetic l:Lg1/c;

.field public final synthetic m:Le2/g0;


# direct methods
.method public constructor <init>(Lg1/c;Le2/g0;)V
    .locals 0

    iput-object p1, p0, Lg1/b;->l:Lg1/c;

    iput-object p2, p0, Lg1/b;->m:Le2/g0;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    iget-object v0, p0, Lg1/b;->l:Lg1/c;

    iget-object v1, v0, Lg1/c;->q:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, v0, Lg1/c;->l:Lb0/l1;

    iget-object p2, v0, Lg1/c;->n:Lf2/y;

    iget-object p0, p0, Lg1/b;->m:Le2/g0;

    iget p0, p0, Le2/g0;->m:I

    iget-object p3, v0, Lg1/c;->q:Landroid/graphics/Rect;

    iget-object p1, p1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
