.class public final Lg0/n;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field public final a:Lg0/d;


# direct methods
.method public constructor <init>(Lg0/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p1, p0, Lg0/n;->a:Lg0/d;

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lg0/n;->a:Lg0/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lg0/n;->a:Lg0/d;

    invoke-virtual {p0, p2}, Lg0/d;->a(Landroid/view/Menu;)Z

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lg0/n;->a:Lg0/d;

    iget-object p0, p0, Lg0/d;->a:Lg0/e;

    invoke-virtual {p0}, Lg0/e;->close()V

    return-void
.end method

.method public final onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iget-object p0, p0, Lg0/n;->a:Lg0/d;

    iget-object p0, p0, Lg0/d;->c:Lg0/b;

    invoke-virtual {p0}, Lg0/b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/c;

    iget p1, p0, Ll1/c;->a:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Ll1/c;->b:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p0, Ll1/c;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p0, p0, Ll1/c;->d:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p3, p1, p2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lg0/n;->a:Lg0/d;

    invoke-virtual {p0, p2}, Lg0/d;->a(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
