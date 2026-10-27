.class public final Lg1/a;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public final synthetic l:Lg1/c;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Lg1/c;I)V
    .locals 0

    iput-object p1, p0, Lg1/a;->l:Lg1/c;

    iput p2, p0, Lg1/a;->m:I

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

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

    iget-object v0, p0, Lg1/a;->l:Lg1/c;

    iget-object v1, v0, Lg1/c;->l:Lb0/l1;

    iget-object v0, v0, Lg1/c;->n:Lf2/y;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, v1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p1, Landroid/view/autofill/AutofillManager;

    iget p0, p0, Lg1/a;->m:I

    invoke-virtual {p1, v0, p0, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
