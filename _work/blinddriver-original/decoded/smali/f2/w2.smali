.class public final Lf2/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic l:Landroid/view/View;

.field public final synthetic m:Lr0/u1;


# direct methods
.method public constructor <init>(Landroid/view/View;Lr0/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/w2;->l:Landroid/view/View;

    iput-object p2, p0, Lf2/w2;->m:Lr0/u1;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf2/w2;->l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lf2/w2;->m:Lr0/u1;

    invoke-virtual {p0}, Lr0/u1;->x()V

    return-void
.end method
