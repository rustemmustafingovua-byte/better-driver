.class public final Lg0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/f;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Li9/c;

.field public final c:Li9/a;

.field public final d:Lp/r1;

.field public final e:Ld1/b0;

.field public final f:Lg0/a;

.field public final g:Lg0/a;

.field public h:Landroid/view/ActionMode;

.field public i:Landroidx/fragment/app/e;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Li9/c;Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/g;->a:Landroid/view/View;

    iput-object p2, p0, Lg0/g;->b:Li9/c;

    iput-object p3, p0, Lg0/g;->c:Li9/a;

    new-instance p1, Lp/r1;

    invoke-direct {p1}, Lp/r1;-><init>()V

    iput-object p1, p0, Lg0/g;->d:Lp/r1;

    new-instance p1, Ld1/b0;

    new-instance p2, Lg0/a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lg0/a;-><init>(Lg0/g;I)V

    invoke-direct {p1, p2}, Ld1/b0;-><init>(Li9/c;)V

    iput-object p1, p0, Lg0/g;->e:Ld1/b0;

    new-instance p1, Lg0/a;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lg0/a;-><init>(Lg0/g;I)V

    iput-object p1, p0, Lg0/g;->f:Lg0/a;

    new-instance p1, Lg0/a;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lg0/a;-><init>(Lg0/g;I)V

    iput-object p1, p0, Lg0/g;->g:Lg0/a;

    return-void
.end method


# virtual methods
.method public final a(Li0/e;La9/i;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lg0/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lg0/f;-><init>(Li0/f;Ljava/lang/Object;Ly8/c;I)V

    sget-object p1, Lp/n1;->l:Lp/n1;

    iget-object p0, p0, Lg0/g;->d:Lp/r1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lf2/z2;

    invoke-direct {p1, p0, v0, v2}, Lf2/z2;-><init>(Lp/r1;Li9/c;Ly8/c;)V

    invoke-static {p1, p2}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
