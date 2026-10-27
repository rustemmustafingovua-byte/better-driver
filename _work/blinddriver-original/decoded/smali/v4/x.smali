.class public abstract Lv4/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv4/a;

.field public static final b:Ljava/lang/ThreadLocal;

.field public static final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv4/a;

    invoke-direct {v0}, Lv4/z;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv4/z;->O:Z

    new-instance v1, Lv4/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lv4/h;-><init>(I)V

    invoke-virtual {v0, v1}, Lv4/z;->b0(Lv4/t;)V

    new-instance v1, Lv4/f;

    invoke-direct {v1}, Lv4/t;-><init>()V

    invoke-virtual {v0, v1}, Lv4/z;->b0(Lv4/t;)V

    new-instance v1, Lv4/h;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lv4/h;-><init>(I)V

    invoke-virtual {v0, v1}, Lv4/z;->b0(Lv4/t;)V

    sput-object v0, Lv4/x;->a:Lv4/a;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lv4/x;->b:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lv4/x;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lk/e;
    .locals 3

    sget-object v0, Lv4/x;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/e;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lk/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lk/v0;-><init>(I)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static b(Landroid/view/ViewGroup;Lv4/t;)V
    .locals 4

    invoke-static {}, Lv4/x;->a()Lk/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lv4/t;

    invoke-virtual {v3, p0}, Lv4/t;->N(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lv4/t;->p(Landroid/view/ViewGroup;Z)V

    :cond_1
    const p1, 0x7f080087

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
