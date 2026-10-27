.class public final Lf3/e;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lf3/x;

.field public final synthetic m:Li9/a;

.field public final synthetic n:Lf3/a0;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Lb3/m;


# direct methods
.method public constructor <init>(Lf3/x;Li9/a;Lf3/a0;Ljava/lang/String;Lb3/m;)V
    .locals 0

    iput-object p1, p0, Lf3/e;->l:Lf3/x;

    iput-object p2, p0, Lf3/e;->m:Li9/a;

    iput-object p3, p0, Lf3/e;->n:Lf3/a0;

    iput-object p4, p0, Lf3/e;->o:Ljava/lang/String;

    iput-object p5, p0, Lf3/e;->p:Lb3/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lr0/g0;

    iget-object p1, p0, Lf3/e;->l:Lf3/x;

    iget-object v0, p1, Lf3/x;->z:Landroid/view/WindowManager;

    iget-object v1, p1, Lf3/x;->A:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lf3/e;->o:Ljava/lang/String;

    iget-object v1, p0, Lf3/e;->p:Lb3/m;

    iget-object v2, p0, Lf3/e;->m:Li9/a;

    iget-object p0, p0, Lf3/e;->n:Lf3/a0;

    invoke-virtual {p1, v2, p0, v0, v1}, Lf3/x;->j(Li9/a;Lf3/a0;Ljava/lang/String;Lb3/m;)V

    new-instance p0, Lb0/u0;

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method
