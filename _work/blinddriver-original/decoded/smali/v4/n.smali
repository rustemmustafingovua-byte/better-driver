.class public final Lv4/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv4/t;


# direct methods
.method public constructor <init>(Lv4/t;)V
    .locals 0

    iput-object p1, p0, Lv4/n;->a:Lv4/t;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lv4/n;->a:Lv4/t;

    invoke-virtual {v0}, Lv4/t;->x()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
