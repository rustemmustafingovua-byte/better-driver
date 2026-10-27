.class public Lq3/m0;
.super Lq3/u0;
.source "SourceFile"


# static fields
.field public static n:Z

.field public static o:Ljava/lang/reflect/Method;

.field public static p:Ljava/lang/Class;

.field public static q:Ljava/lang/reflect/Field;

.field public static r:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[Ll3/b;

.field public e:Ll3/b;

.field public f:Lq3/x0;

.field public g:Ll3/b;

.field public h:I

.field public i:Lq3/e;

.field public j:I

.field public k:I

.field public l:[[Landroid/graphics/Rect;

.field public m:[[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lq3/x0;Landroid/view/WindowInsets;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lq3/u0;-><init>(Lq3/x0;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lq3/m0;->e:Ll3/b;

    const/16 p1, 0xa

    .line 3
    new-array v0, p1, [[Landroid/graphics/Rect;

    iput-object v0, p0, Lq3/m0;->l:[[Landroid/graphics/Rect;

    .line 4
    new-array p1, p1, [[Landroid/graphics/Rect;

    iput-object p1, p0, Lq3/m0;->m:[[Landroid/graphics/Rect;

    .line 5
    iput-object p2, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lq3/x0;Lq3/m0;)V
    .locals 1

    .line 6
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Lq3/m0;-><init>(Lq3/x0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private C(Landroid/view/View;)Lq3/e;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p0, p0, Lq3/u0;->a:Lq3/x0;

    iget-object p0, p0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p0}, Lq3/u0;->t()Z

    move-result p0

    if-eqz p0, :cond_2

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lq3/e;->a(IIZIIII)Lq3/e;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lr5/h1;->m(Landroid/view/Display;I)Lq3/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lr5/h1;->m(Landroid/view/Display;I)Lq3/h;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lr5/h1;->m(Landroid/view/Display;I)Lq3/h;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p1, v4}, Lr5/h1;->m(Landroid/view/Display;I)Lq3/h;

    move-result-object p1

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_3

    iget v0, v1, Lq3/h;->b:I

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, p0

    :goto_0
    if-eqz v2, :cond_4

    iget v0, v2, Lq3/h;->b:I

    move v8, v0

    goto :goto_1

    :cond_4
    move v8, p0

    :goto_1
    if-eqz v3, :cond_5

    iget v0, v3, Lq3/h;->b:I

    move v9, v0

    goto :goto_2

    :cond_5
    move v9, p0

    :goto_2
    if-eqz p1, :cond_6

    iget p0, p1, Lq3/h;->b:I

    :cond_6
    move v10, p0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Lq3/e;->a(IIZIIII)Lq3/e;

    move-result-object p0

    return-object p0
.end method

.method private static D([[Landroid/graphics/Rect;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_3

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ly4/s;->v(I)I

    move-result v2

    aget-object v2, p0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/graphics/Rect;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v5, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private E(Ll3/b;)[Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p1, Ll3/b;->a:I

    iget v2, p1, Ll3/b;->d:I

    iget v3, p1, Ll3/b;->c:I

    iget v4, p1, Ll3/b;->b:I

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget p1, p1, Ll3/b;->a:I

    iget v6, p0, Lq3/m0;->j:I

    invoke-direct {v1, v5, v5, p1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v4, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lq3/m0;->k:I

    invoke-direct {p1, v5, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lq3/m0;->k:I

    sub-int v3, v1, v3

    iget v4, p0, Lq3/m0;->j:I

    invoke-direct {p1, v3, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v2, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lq3/m0;->j:I

    sub-int v2, v1, v2

    iget p0, p0, Lq3/m0;->k:I

    invoke-direct {p1, v5, v2, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Rect;

    return-object p0
.end method

.method private F(IZ)Ll3/b;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Ll3/b;->e:Ll3/b;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Lq3/m0;->G(IZ)Ll3/b;

    move-result-object v2

    invoke-static {v0, v2}, Ll3/b;->a(Ll3/b;Ll3/b;)Ll3/b;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private H()Ll3/b;
    .locals 0

    iget-object p0, p0, Lq3/m0;->f:Lq3/x0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p0}, Lq3/u0;->l()Ll3/b;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ll3/b;->e:Ll3/b;

    return-object p0
.end method

.method private I(Landroid/view/View;)Ll3/b;
    .locals 4

    const-string p0, "WindowInsetsCompat"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_5

    sget-boolean v0, Lq3/m0;->n:Z

    if-nez v0, :cond_0

    invoke-static {}, Lq3/m0;->K()V

    :cond_0
    sget-object v0, Lq3/m0;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Lq3/m0;->p:Ljava/lang/Class;

    if-eqz v2, :cond_4

    sget-object v2, Lq3/m0;->q:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    sget-object v0, Lq3/m0;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lq3/m0;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, p1}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static K()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lq3/m0;->o:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lq3/m0;->p:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lq3/m0;->q:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lq3/m0;->r:Ljava/lang/reflect/Field;

    sget-object v1, Lq3/m0;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v1, Lq3/m0;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, Lq3/m0;->n:Z

    return-void
.end method

.method public static L(II)Z
    .locals 0

    and-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A([[Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/graphics/Rect;

    iput-object p1, p0, Lq3/m0;->l:[[Landroid/graphics/Rect;

    return-void
.end method

.method public B([[Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/graphics/Rect;

    iput-object p1, p0, Lq3/m0;->m:[[Landroid/graphics/Rect;

    return-void
.end method

.method public G(IZ)Ll3/b;
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Ll3/b;->e:Ll3/b;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_b

    const/16 p2, 0x8

    if-eq p1, p2, :cond_6

    const/16 p2, 0x10

    if-eq p1, p2, :cond_5

    const/16 p2, 0x20

    if-eq p1, p2, :cond_4

    const/16 p2, 0x40

    if-eq p1, p2, :cond_3

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p0, Lq3/m0;->f:Lq3/x0;

    if-eqz p1, :cond_1

    iget-object p0, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p0}, Lq3/u0;->h()Lq3/c;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq3/u0;->h()Lq3/c;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lq3/c;->a:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    invoke-static {p1, p2, v0, p0}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0}, Lq3/u0;->o()Ll3/b;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lq3/u0;->k()Ll3/b;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lq3/u0;->m()Ll3/b;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p1, p0, Lq3/m0;->d:[Ll3/b;

    if-eqz p1, :cond_7

    invoke-static {p2}, Ly4/s;->v(I)I

    move-result p2

    aget-object v0, p1, p2

    :cond_7
    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lq3/m0;->n()Ll3/b;

    move-result-object p1

    invoke-direct {p0}, Lq3/m0;->H()Ll3/b;

    move-result-object p2

    iget p1, p1, Ll3/b;->d:I

    iget v0, p2, Ll3/b;->d:I

    if-le p1, v0, :cond_9

    invoke-static {v2, v2, v2, p1}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p1, p0, Lq3/m0;->g:Ll3/b;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Ll3/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Lq3/m0;->g:Ll3/b;

    iget p0, p0, Ll3/b;->d:I

    iget p1, p2, Ll3/b;->d:I

    if-le p0, p1, :cond_a

    invoke-static {v2, v2, v2, p0}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v1

    :cond_b
    if-eqz p2, :cond_c

    invoke-direct {p0}, Lq3/m0;->H()Ll3/b;

    move-result-object p1

    invoke-virtual {p0}, Lq3/u0;->l()Ll3/b;

    move-result-object p0

    iget p2, p1, Ll3/b;->a:I

    iget v0, p0, Ll3/b;->a:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p1, Ll3/b;->c:I

    iget v1, p0, Ll3/b;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p1, p1, Ll3/b;->d:I

    iget p0, p0, Ll3/b;->d:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, v2, v0, p0}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0

    :cond_c
    iget p1, p0, Lq3/m0;->h:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {p0}, Lq3/m0;->n()Ll3/b;

    move-result-object p1

    iget-object p0, p0, Lq3/m0;->f:Lq3/x0;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p0}, Lq3/u0;->l()Ll3/b;

    move-result-object v0

    :cond_e
    iget p0, p1, Ll3/b;->d:I

    if-eqz v0, :cond_f

    iget p2, v0, Ll3/b;->d:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_f
    iget p2, p1, Ll3/b;->a:I

    iget p1, p1, Ll3/b;->c:I

    invoke-static {p2, v2, p1, p0}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0

    :cond_10
    if-eqz p2, :cond_11

    invoke-direct {p0}, Lq3/m0;->H()Ll3/b;

    move-result-object p1

    iget p1, p1, Ll3/b;->b:I

    invoke-virtual {p0}, Lq3/m0;->n()Ll3/b;

    move-result-object p0

    iget p0, p0, Ll3/b;->b:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0, v2, v2}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0

    :cond_11
    iget p1, p0, Lq3/m0;->h:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_12

    return-object v1

    :cond_12
    invoke-virtual {p0}, Lq3/m0;->n()Ll3/b;

    move-result-object p0

    iget p0, p0, Ll3/b;->b:I

    invoke-static {v2, p0, v2, v2}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public J(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x80

    if-eq p1, v2, :cond_1

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lq3/m0;->G(IZ)Ll3/b;

    move-result-object p0

    sget-object p1, Ll3/b;->e:Ll3/b;

    invoke-virtual {p0, p1}, Ll3/b;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lq3/m0;->k:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lq3/m0;->j:I

    invoke-direct {p0, p1}, Lq3/m0;->I(Landroid/view/View;)Ll3/b;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ll3/b;->e:Ll3/b;

    :cond_0
    invoke-virtual {p0, p1}, Lq3/m0;->x(Ll3/b;)V

    return-void
.end method

.method public e(Lq3/x0;)V
    .locals 2

    iget-object v0, p0, Lq3/m0;->f:Lq3/x0;

    iget-object v1, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v1, v0}, Lq3/u0;->y(Lq3/x0;)V

    iget-object v0, p0, Lq3/m0;->g:Ll3/b;

    iget-object p1, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p1, v0}, Lq3/u0;->x(Ll3/b;)V

    iget v0, p0, Lq3/m0;->h:I

    invoke-virtual {p1, v0}, Lq3/u0;->z(I)V

    iget-object v0, p0, Lq3/m0;->i:Lq3/e;

    invoke-virtual {p1, v0}, Lq3/u0;->v(Lq3/e;)V

    iget-object v0, p0, Lq3/m0;->l:[[Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lq3/u0;->A([[Landroid/graphics/Rect;)V

    iget-object p0, p0, Lq3/m0;->m:[[Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lq3/u0;->B([[Landroid/graphics/Rect;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Lq3/u0;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lq3/m0;

    iget-object v0, p0, Lq3/m0;->g:Ll3/b;

    iget-object v2, p1, Lq3/m0;->g:Ll3/b;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lq3/m0;->h:I

    iget p1, p1, Lq3/m0;->h:I

    invoke-static {p0, p1}, Lq3/m0;->L(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public f(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lq3/m0;->l:[[Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lq3/m0;->D([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lq3/m0;->m:[[Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lq3/m0;->D([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public i(I)Ll3/b;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lq3/m0;->F(IZ)Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public j(I)Ll3/b;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lq3/m0;->F(IZ)Ll3/b;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ll3/b;
    .locals 4

    iget-object v0, p0, Lq3/m0;->e:Ll3/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Ll3/b;->b(IIII)Ll3/b;

    move-result-object v0

    iput-object v0, p0, Lq3/m0;->e:Ll3/b;

    :cond_0
    iget-object p0, p0, Lq3/m0;->e:Ll3/b;

    return-object p0
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lq3/m0;->C(Landroid/view/View;)Lq3/e;

    move-result-object p1

    iput-object p1, p0, Lq3/m0;->i:Lq3/e;

    return-void
.end method

.method public q()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Ly4/s;->v(I)I

    move-result v1

    iget-object v2, p0, Lq3/m0;->l:[[Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lq3/m0;->i(I)Ll3/b;

    move-result-object v3

    invoke-direct {p0, v3}, Lq3/m0;->E(Ll3/b;)[Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lq3/m0;->m:[[Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lq3/m0;->j(I)Ll3/b;

    move-result-object v3

    invoke-direct {p0, v3}, Lq3/m0;->E(Ll3/b;)[Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(IIII)Lq3/x0;
    .locals 3

    iget-object v0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lq3/x0;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lq3/x0;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_0

    new-instance v1, Lq3/k0;

    invoke-direct {v1, v0}, Lq3/k0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x23

    if-lt v1, v2, :cond_1

    new-instance v1, Lq3/j0;

    invoke-direct {v1, v0}, Lq3/j0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x22

    if-lt v1, v2, :cond_2

    new-instance v1, Lq3/i0;

    invoke-direct {v1, v0}, Lq3/i0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1f

    if-lt v1, v2, :cond_3

    new-instance v1, Lq3/h0;

    invoke-direct {v1, v0}, Lq3/h0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    new-instance v1, Lq3/g0;

    invoke-direct {v1, v0}, Lq3/g0;-><init>(Lq3/x0;)V

    goto :goto_0

    :cond_4
    new-instance v1, Lq3/f0;

    invoke-direct {v1, v0}, Lq3/f0;-><init>(Lq3/x0;)V

    :goto_0
    invoke-virtual {p0}, Lq3/m0;->n()Ll3/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lq3/x0;->a(Ll3/b;IIII)Ll3/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lq3/l0;->h(Ll3/b;)V

    invoke-virtual {p0}, Lq3/u0;->l()Ll3/b;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lq3/x0;->a(Ll3/b;IIII)Ll3/b;

    move-result-object p0

    invoke-virtual {v1, p0}, Lq3/l0;->f(Ll3/b;)V

    invoke-virtual {v1}, Lq3/l0;->b()Lq3/x0;

    move-result-object p0

    return-object p0
.end method

.method public t()Z
    .locals 0

    iget-object p0, p0, Lq3/m0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result p0

    return p0
.end method

.method public u(I)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_2

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lq3/m0;->J(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public v(Lq3/e;)V
    .locals 0

    iput-object p1, p0, Lq3/m0;->i:Lq3/e;

    return-void
.end method

.method public w([Ll3/b;)V
    .locals 0

    iput-object p1, p0, Lq3/m0;->d:[Ll3/b;

    return-void
.end method

.method public x(Ll3/b;)V
    .locals 0

    iput-object p1, p0, Lq3/m0;->g:Ll3/b;

    return-void
.end method

.method public y(Lq3/x0;)V
    .locals 0

    iput-object p1, p0, Lq3/m0;->f:Lq3/x0;

    return-void
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lq3/m0;->h:I

    return-void
.end method
