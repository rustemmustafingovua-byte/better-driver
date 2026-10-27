.class public abstract Lv4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final J:[Landroid/animation/Animator;

.field public static final K:[I

.field public static final L:Lmb/q;

.field public static final M:Ljava/lang/ThreadLocal;


# instance fields
.field public A:Z

.field public B:Lv4/t;

.field public C:Ljava/util/ArrayList;

.field public D:Ljava/util/ArrayList;

.field public E:Lr5/u0;

.field public F:Lmb/q;

.field public G:J

.field public H:Lv4/q;

.field public I:J

.field public final l:Ljava/lang/String;

.field public m:J

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;

.field public p:Lg5/i;

.field public q:Lg5/i;

.field public r:Lv4/z;

.field public final s:[I

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/util/ArrayList;

.field public v:[Lv4/r;

.field public final w:Ljava/util/ArrayList;

.field public x:[Landroid/animation/Animator;

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/animation/Animator;

    sput-object v0, Lv4/t;->J:[Landroid/animation/Animator;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lv4/t;->K:[I

    new-instance v0, Lmb/q;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lmb/q;-><init>(I)V

    sput-object v0, Lv4/t;->L:Lmb/q;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lv4/t;->M:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv4/t;->l:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lv4/t;->m:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv4/t;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv4/t;->o:Ljava/util/ArrayList;

    new-instance v0, Lg5/i;

    invoke-direct {v0}, Lg5/i;-><init>()V

    iput-object v0, p0, Lv4/t;->p:Lg5/i;

    new-instance v0, Lg5/i;

    invoke-direct {v0}, Lg5/i;-><init>()V

    iput-object v0, p0, Lv4/t;->q:Lg5/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lv4/t;->r:Lv4/z;

    sget-object v1, Lv4/t;->K:[I

    iput-object v1, p0, Lv4/t;->s:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lv4/t;->w:Ljava/util/ArrayList;

    sget-object v1, Lv4/t;->J:[Landroid/animation/Animator;

    iput-object v1, p0, Lv4/t;->x:[Landroid/animation/Animator;

    const/4 v1, 0x0

    iput v1, p0, Lv4/t;->y:I

    iput-boolean v1, p0, Lv4/t;->z:Z

    iput-boolean v1, p0, Lv4/t;->A:Z

    iput-object v0, p0, Lv4/t;->B:Lv4/t;

    iput-object v0, p0, Lv4/t;->C:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv4/t;->D:Ljava/util/ArrayList;

    sget-object v0, Lv4/t;->L:Lmb/q;

    iput-object v0, p0, Lv4/t;->F:Lmb/q;

    return-void
.end method

.method public static B()Lk/e;
    .locals 3

    sget-object v0, Lv4/t;->M:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/e;

    if-nez v1, :cond_0

    new-instance v1, Lk/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lk/v0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static L(Lv4/a0;Lv4/a0;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lv4/a0;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lv4/a0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0

    :cond_2
    :goto_0
    return p2
.end method

.method public static g(Lg5/i;Landroid/view/View;Lv4/a0;)V
    .locals 4

    iget-object v0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Lk/e;

    iget-object v1, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v1, Lk/e;

    iget-object v2, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget-object p0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast p0, Lk/q;

    invoke-virtual {v0, p1, p2}, Lk/v0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p2, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v1, p2}, Lk/v0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2, v0}, Lk/v0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2, p1}, Lk/v0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lk/q;->g(J)I

    move-result p2

    if-ltz p2, :cond_4

    invoke-virtual {p0, v1, v2}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, v0}, Lk/q;->i(JLjava/lang/Object;)V

    return-void

    :cond_4
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    invoke-virtual {p0, v1, v2, p1}, Lk/q;->i(JLjava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final A()Lv4/t;
    .locals 1

    iget-object v0, p0, Lv4/t;->r:Lv4/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv4/t;->A()Lv4/t;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public D()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final E(Landroid/view/View;Z)Lv4/a0;
    .locals 1

    iget-object v0, p0, Lv4/t;->r:Lv4/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lv4/t;->E(Landroid/view/View;Z)Lv4/a0;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lv4/t;->p:Lg5/i;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lv4/t;->q:Lg5/i;

    :goto_0
    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lk/e;

    invoke-virtual {p0, p1}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv4/a0;

    return-object p0
.end method

.method public F()Z
    .locals 0

    iget-object p0, p0, Lv4/t;->w:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract G()Z
.end method

.method public H(Lv4/a0;Lv4/a0;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lv4/t;->D()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-static {p1, p2, v3}, Lv4/t;->L(Lv4/a0;Lv4/a0;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lv4/a0;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lv4/t;->L(Lv4/a0;Lv4/a0;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public final I(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lv4/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    iget-object p0, p0, Lv4/t;->o:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v3
.end method

.method public final M(Lv4/t;Lv4/s;Z)V
    .locals 5

    iget-object v0, p0, Lv4/t;->B:Lv4/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    :cond_0
    iget-object v0, p0, Lv4/t;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lv4/t;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lv4/t;->v:[Lv4/r;

    if-nez v1, :cond_1

    new-array v1, v0, [Lv4/r;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lv4/t;->v:[Lv4/r;

    iget-object v3, p0, Lv4/t;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lv4/r;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-interface {p2, v4, p1, p3}, Lv4/s;->c(Lv4/r;Lv4/t;Z)V

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lv4/t;->v:[Lv4/r;

    :cond_3
    return-void
.end method

.method public N(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lv4/t;->A:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lv4/t;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lv4/t;->x:[Landroid/animation/Animator;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    sget-object v1, Lv4/t;->J:[Landroid/animation/Animator;

    iput-object v1, p0, Lv4/t;->x:[Landroid/animation/Animator;

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aput-object v3, p1, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lv4/t;->x:[Landroid/animation/Animator;

    sget-object p1, Lv4/s;->i:Lc2/c0;

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    iput-boolean v1, p0, Lv4/t;->z:Z

    :cond_1
    return-void
.end method

.method public O()V
    .locals 10

    invoke-static {}, Lv4/t;->B()Lk/e;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lv4/t;->G:J

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lv4/t;->D:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lv4/t;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv4/o;

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    iget-object v5, v5, Lv4/o;->f:Landroid/animation/Animator;

    iget-wide v6, p0, Lv4/t;->m:J

    cmp-long v8, v6, v1

    if-ltz v8, :cond_0

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_0
    iget-object v5, p0, Lv4/t;->w:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, p0, Lv4/t;->G:J

    invoke-virtual {v4}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lv4/t;->G:J

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lv4/t;->D:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public P(Lv4/r;)Lv4/t;
    .locals 1

    iget-object v0, p0, Lv4/t;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lv4/t;->B:Lv4/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lv4/t;->P(Lv4/r;)Lv4/t;

    :cond_1
    iget-object p1, p0, Lv4/t;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lv4/t;->C:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public Q(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lv4/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public R(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lv4/t;->z:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lv4/t;->A:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lv4/t;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lv4/t;->x:[Landroid/animation/Animator;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    sget-object v2, Lv4/t;->J:[Landroid/animation/Animator;

    iput-object v2, p0, Lv4/t;->x:[Landroid/animation/Animator;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aput-object v3, p1, v1

    invoke-virtual {v2}, Landroid/animation/Animator;->resume()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lv4/t;->x:[Landroid/animation/Animator;

    sget-object p1, Lv4/s;->j:Lc2/c0;

    invoke-virtual {p0, p0, p1, v0}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    :cond_1
    iput-boolean v0, p0, Lv4/t;->z:Z

    :cond_2
    return-void
.end method

.method public S()V
    .locals 9

    invoke-virtual {p0}, Lv4/t;->Z()V

    invoke-static {}, Lv4/t;->B()Lk/e;

    move-result-object v0

    iget-object v1, p0, Lv4/t;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Lk/v0;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lv4/t;->Z()V

    if-eqz v4, :cond_0

    new-instance v5, Lq3/t;

    invoke-direct {v5, p0, v0}, Lq3/t;-><init>(Lv4/t;Lk/e;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v5, p0, Lv4/t;->m:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_1
    new-instance v5, Lv4/n;

    invoke-direct {v5, p0}, Lv4/n;-><init>(Lv4/t;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lv4/t;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lv4/t;->x()V

    return-void
.end method

.method public T(JJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Lv4/t;->G:J

    cmp-long v5, v1, p3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v10, p3, v8

    if-gez v10, :cond_1

    cmp-long v11, v1, v8

    if-gez v11, :cond_2

    :cond_1
    cmp-long v11, p3, v3

    if-lez v11, :cond_3

    cmp-long v11, v1, v3

    if-gtz v11, :cond_3

    :cond_2
    iput-boolean v6, v0, Lv4/t;->A:Z

    sget-object v11, Lv4/s;->f:Lc2/c0;

    invoke-virtual {v0, v0, v11, v5}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    :cond_3
    iget-object v11, v0, Lv4/t;->w:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, v0, Lv4/t;->x:[Landroid/animation/Animator;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/animation/Animator;

    sget-object v13, Lv4/t;->J:[Landroid/animation/Animator;

    iput-object v13, v0, Lv4/t;->x:[Landroid/animation/Animator;

    :goto_1
    if-ge v6, v12, :cond_4

    aget-object v13, v11, v6

    const/4 v14, 0x0

    aput-object v14, v11, v6

    invoke-virtual {v13}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v14

    move-wide/from16 v16, v3

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    check-cast v13, Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v3, v4}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v3, v16

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v3

    iput-object v11, v0, Lv4/t;->x:[Landroid/animation/Animator;

    cmp-long v3, v1, v16

    if-lez v3, :cond_5

    cmp-long v4, p3, v16

    if-lez v4, :cond_6

    :cond_5
    cmp-long v1, v1, v8

    if-gez v1, :cond_8

    if-ltz v10, :cond_8

    :cond_6
    if-lez v3, :cond_7

    iput-boolean v7, v0, Lv4/t;->A:Z

    :cond_7
    sget-object v1, Lv4/s;->g:Lc2/c0;

    invoke-virtual {v0, v0, v1, v5}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    :cond_8
    return-void
.end method

.method public U(Lr5/u0;)V
    .locals 0

    iput-object p1, p0, Lv4/t;->E:Lr5/u0;

    return-void
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public W(Lmb/q;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lv4/t;->L:Lmb/q;

    iput-object p1, p0, Lv4/t;->F:Lmb/q;

    return-void

    :cond_0
    iput-object p1, p0, Lv4/t;->F:Lmb/q;

    return-void
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public Y(J)V
    .locals 0

    iput-wide p1, p0, Lv4/t;->m:J

    return-void
.end method

.method public final Z()V
    .locals 2

    iget v0, p0, Lv4/t;->y:I

    if-nez v0, :cond_0

    sget-object v0, Lv4/s;->f:Lc2/c0;

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    iput-boolean v1, p0, Lv4/t;->A:Z

    :cond_0
    iget v0, p0, Lv4/t;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv4/t;->y:I

    return-void
.end method

.method public a(Lv4/r;)V
    .locals 1

    iget-object v0, p0, Lv4/t;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv4/t;->C:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lv4/t;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, -0x1

    iget-wide v3, p0, Lv4/t;->m:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lv4/t;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lv4/t;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object p0, p0, Lv4/t;->o:Ljava/util/ArrayList;

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    :cond_1
    const-string v1, "tgts("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    const/4 v3, 0x0

    if-lez v1, :cond_3

    move v1, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    if-lez v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv4/t;->s()Lv4/t;

    move-result-object p0

    return-object p0
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lv4/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lv4/t;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lv4/t;->x:[Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    sget-object v2, Lv4/t;->J:[Landroid/animation/Animator;

    iput-object v2, p0, Lv4/t;->x:[Landroid/animation/Animator;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lv4/t;->x:[Landroid/animation/Animator;

    sget-object v0, Lv4/s;->h:Lc2/c0;

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    return-void
.end method

.method public abstract i(Lv4/a0;)V
.end method

.method public final j(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lv4/a0;

    invoke-direct {v0, p1}, Lv4/a0;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lv4/t;->o(Lv4/a0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lv4/t;->i(Lv4/a0;)V

    :goto_0
    iget-object v1, v0, Lv4/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lv4/t;->l(Lv4/a0;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lv4/t;->p:Lg5/i;

    invoke-static {v1, p1, v0}, Lv4/t;->g(Lg5/i;Landroid/view/View;Lv4/a0;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lv4/t;->q:Lg5/i;

    invoke-static {v1, p1, v0}, Lv4/t;->g(Lg5/i;Landroid/view/View;Lv4/a0;)V

    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lv4/t;->j(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public l(Lv4/a0;)V
    .locals 0

    return-void
.end method

.method public abstract o(Lv4/a0;)V
.end method

.method public final p(Landroid/view/ViewGroup;Z)V
    .locals 7

    invoke-virtual {p0, p2}, Lv4/t;->r(Z)V

    iget-object v0, p0, Lv4/t;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lv4/t;->o:Ljava/util/ArrayList;

    if-gtz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lv4/t;->j(Landroid/view/View;Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lv4/a0;

    invoke-direct {v5, v4}, Lv4/a0;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, v5}, Lv4/t;->o(Lv4/a0;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5}, Lv4/t;->i(Lv4/a0;)V

    :goto_2
    iget-object v6, v5, Lv4/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lv4/t;->l(Lv4/a0;)V

    if-eqz p2, :cond_3

    iget-object v6, p0, Lv4/t;->p:Lg5/i;

    invoke-static {v6, v4, v5}, Lv4/t;->g(Lg5/i;Landroid/view/View;Lv4/a0;)V

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lv4/t;->q:Lg5/i;

    invoke-static {v6, v4, v5}, Lv4/t;->g(Lg5/i;Landroid/view/View;Lv4/a0;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lv4/a0;

    invoke-direct {v0, p1}, Lv4/a0;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Lv4/t;->o(Lv4/a0;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v0}, Lv4/t;->i(Lv4/a0;)V

    :goto_5
    iget-object v3, v0, Lv4/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lv4/t;->l(Lv4/a0;)V

    if-eqz p2, :cond_7

    iget-object v3, p0, Lv4/t;->p:Lg5/i;

    invoke-static {v3, p1, v0}, Lv4/t;->g(Lg5/i;Landroid/view/View;Lv4/a0;)V

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lv4/t;->q:Lg5/i;

    invoke-static {v3, p1, v0}, Lv4/t;->g(Lg5/i;Landroid/view/View;Lv4/a0;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public final r(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lv4/t;->p:Lg5/i;

    iget-object p1, p1, Lg5/i;->m:Ljava/lang/Object;

    check-cast p1, Lk/e;

    invoke-virtual {p1}, Lk/v0;->clear()V

    iget-object p1, p0, Lv4/t;->p:Lg5/i;

    iget-object p1, p1, Lg5/i;->n:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lv4/t;->p:Lg5/i;

    iget-object p0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast p0, Lk/q;

    invoke-virtual {p0}, Lk/q;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lv4/t;->q:Lg5/i;

    iget-object p1, p1, Lg5/i;->m:Ljava/lang/Object;

    check-cast p1, Lk/e;

    invoke-virtual {p1}, Lk/v0;->clear()V

    iget-object p1, p0, Lv4/t;->q:Lg5/i;

    iget-object p1, p1, Lg5/i;->n:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lv4/t;->q:Lg5/i;

    iget-object p0, p0, Lg5/i;->o:Ljava/lang/Object;

    check-cast p0, Lk/q;

    invoke-virtual {p0}, Lk/q;->a()V

    return-void
.end method

.method public s()Lv4/t;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/t;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lv4/t;->D:Ljava/util/ArrayList;

    new-instance v1, Lg5/i;

    invoke-direct {v1}, Lg5/i;-><init>()V

    iput-object v1, v0, Lv4/t;->p:Lg5/i;

    new-instance v1, Lg5/i;

    invoke-direct {v1}, Lg5/i;-><init>()V

    iput-object v1, v0, Lv4/t;->q:Lg5/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lv4/t;->t:Ljava/util/ArrayList;

    iput-object v1, v0, Lv4/t;->u:Ljava/util/ArrayList;

    iput-object v1, v0, Lv4/t;->H:Lv4/q;

    iput-object p0, v0, Lv4/t;->B:Lv4/t;

    iput-object v1, v0, Lv4/t;->C:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lv4/t;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Landroid/view/ViewGroup;Lv4/a0;Lv4/a0;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public v(Landroid/view/ViewGroup;Lg5/i;Lg5/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lv4/t;->B()Lk/e;

    move-result-object v1

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0}, Lv4/t;->A()Lv4/t;

    move-result-object v4

    iget-object v4, v4, Lv4/t;->H:Lv4/q;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_e

    move-object/from16 v7, p4

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv4/a0;

    move-object/from16 v9, p5

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv4/a0;

    if-eqz v8, :cond_1

    iget-object v12, v8, Lv4/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v8, 0x0

    :cond_1
    if-eqz v10, :cond_2

    iget-object v12, v10, Lv4/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v10, 0x0

    :cond_2
    if-nez v8, :cond_5

    if-nez v10, :cond_5

    :cond_3
    move-object/from16 v12, p1

    :cond_4
    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_6

    :cond_5
    if-eqz v8, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual {v0, v8, v10}, Lv4/t;->H(Lv4/a0;Lv4/a0;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_6
    move-object/from16 v12, p1

    invoke-virtual {v0, v12, v8, v10}, Lv4/t;->u(Landroid/view/ViewGroup;Lv4/a0;Lv4/a0;)Landroid/animation/Animator;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v14, v0, Lv4/t;->l:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v8, v10, Lv4/a0;->b:Landroid/view/View;

    invoke-virtual {v0}, Lv4/t;->D()[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    array-length v15, v10

    if-lez v15, :cond_a

    new-instance v15, Lv4/a0;

    invoke-direct {v15, v8}, Lv4/a0;-><init>(Landroid/view/View;)V

    move-object/from16 v5, p3

    iget-object v11, v5, Lg5/i;->m:Ljava/lang/Object;

    check-cast v11, Lk/e;

    invoke-virtual {v11, v8}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lv4/a0;

    move/from16 v16, v3

    move/from16 v17, v4

    if-eqz v11, :cond_7

    const/4 v3, 0x0

    :goto_2
    array-length v4, v10

    if-ge v3, v4, :cond_7

    aget-object v4, v10, v3

    move/from16 v18, v3

    iget-object v3, v11, Lv4/a0;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v15, Lv4/a0;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v18, 0x1

    move-object/from16 v5, p3

    goto :goto_2

    :cond_7
    iget v3, v1, Lk/v0;->n:I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_9

    invoke-virtual {v1, v4}, Lk/v0;->f(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v1, v5}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv4/o;

    iget-object v10, v5, Lv4/o;->c:Lv4/a0;

    if-eqz v10, :cond_8

    iget-object v10, v5, Lv4/o;->a:Landroid/view/View;

    if-ne v10, v8, :cond_8

    iget-object v10, v5, Lv4/o;->b:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v5, v5, Lv4/o;->c:Lv4/a0;

    invoke-virtual {v5, v15}, Lv4/a0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    move-object v11, v13

    goto :goto_4

    :cond_a
    move/from16 v16, v3

    move/from16 v17, v4

    move-object v11, v13

    const/4 v15, 0x0

    :goto_4
    move-object v13, v11

    move-object v11, v15

    goto :goto_5

    :cond_b
    move/from16 v16, v3

    move/from16 v17, v4

    iget-object v8, v8, Lv4/a0;->b:Landroid/view/View;

    const/4 v11, 0x0

    :goto_5
    if-eqz v13, :cond_d

    new-instance v3, Lv4/o;

    invoke-virtual {v12}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v8, v3, Lv4/o;->a:Landroid/view/View;

    iput-object v14, v3, Lv4/o;->b:Ljava/lang/String;

    iput-object v11, v3, Lv4/o;->c:Lv4/a0;

    iput-object v4, v3, Lv4/o;->d:Landroid/view/WindowId;

    iput-object v0, v3, Lv4/o;->e:Lv4/t;

    iput-object v13, v3, Lv4/o;->f:Landroid/animation/Animator;

    if-eqz v17, :cond_c

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v13, v4

    :cond_c
    invoke-virtual {v1, v13, v3}, Lk/v0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lv4/t;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_f

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, v0, Lv4/t;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/o;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v6, v4

    const-wide v8, 0x7fffffffffffffffL

    sub-long/2addr v6, v8

    iget-object v4, v3, Lv4/o;->f:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    add-long/2addr v8, v6

    iget-object v3, v3, Lv4/o;->f:Landroid/animation/Animator;

    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    return-void
.end method

.method public final x()V
    .locals 4

    iget v0, p0, Lv4/t;->y:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lv4/t;->y:I

    if-nez v0, :cond_4

    sget-object v0, Lv4/s;->g:Lc2/c0;

    const/4 v2, 0x0

    invoke-virtual {p0, p0, v0, v2}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Lv4/t;->p:Lg5/i;

    iget-object v3, v3, Lg5/i;->o:Ljava/lang/Object;

    check-cast v3, Lk/q;

    invoke-virtual {v3}, Lk/q;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lv4/t;->p:Lg5/i;

    iget-object v3, v3, Lg5/i;->o:Ljava/lang/Object;

    check-cast v3, Lk/q;

    invoke-virtual {v3, v0}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lv4/t;->q:Lg5/i;

    iget-object v3, v3, Lg5/i;->o:Ljava/lang/Object;

    check-cast v3, Lk/q;

    invoke-virtual {v3}, Lk/q;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lv4/t;->q:Lg5/i;

    iget-object v3, v3, Lg5/i;->o:Ljava/lang/Object;

    check-cast v3, Lk/q;

    invoke-virtual {v3, v0}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lv4/t;->A:Z

    :cond_4
    return-void
.end method

.method public final z(Landroid/view/View;Z)Lv4/a0;
    .locals 4

    iget-object v0, p0, Lv4/t;->r:Lv4/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lv4/t;->z(Landroid/view/View;Z)Lv4/a0;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lv4/t;->t:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv4/t;->u:Ljava/util/ArrayList;

    :goto_0
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/a0;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v3, v3, Lv4/a0;->b:Landroid/view/View;

    if-ne v3, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    :goto_2
    if-ltz v2, :cond_7

    if-eqz p2, :cond_6

    iget-object p0, p0, Lv4/t;->u:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lv4/t;->t:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv4/a0;

    return-object p0

    :cond_7
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method
