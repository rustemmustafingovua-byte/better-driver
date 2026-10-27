.class public final Lq3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:Landroid/view/View;

.field public final synthetic m:Lq3/e0;

.field public final synthetic n:Lg5/l;

.field public final synthetic o:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;Lq3/e0;Lg5/l;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/x;->l:Landroid/view/View;

    iput-object p2, p0, Lq3/x;->m:Lq3/e0;

    iput-object p3, p0, Lq3/x;->n:Lg5/l;

    iput-object p4, p0, Lq3/x;->o:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lq3/x;->m:Lq3/e0;

    iget-object v1, p0, Lq3/x;->n:Lg5/l;

    iget-object v2, p0, Lq3/x;->l:Landroid/view/View;

    invoke-static {v2, v0, v1}, Lq3/z;->i(Landroid/view/View;Lq3/e0;Lg5/l;)V

    iget-object p0, p0, Lq3/x;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
