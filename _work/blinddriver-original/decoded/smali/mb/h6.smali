.class public final Lmb/h6;
.super Lmb/v;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmb/a7;Lmb/x;Lmb/u3;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lmb/h6;->f:I

    .line 6
    iput-object p1, p0, Lmb/h6;->h:Ljava/lang/Object;

    iput-object p3, p0, Lmb/h6;->g:Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p2}, Lmb/t;-><init>(Lmb/x;)V

    return-void
.end method

.method public constructor <init>(Lmb/i6;Ljava/lang/reflect/Method;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmb/h6;->f:I

    .line 1
    iput-object p1, p0, Lmb/h6;->h:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lmb/t;-><init>(Lmb/x;)V

    .line 3
    iput-object p2, p0, Lmb/h6;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb/x;Lmb/v;[Lmb/x;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lmb/h6;->f:I

    .line 4
    iput-object p2, p0, Lmb/h6;->g:Ljava/lang/Object;

    iput-object p3, p0, Lmb/h6;->h:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1}, Lmb/t;-><init>(Lmb/x;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget v0, p0, Lmb/h6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/u3;

    iget-object v0, p0, Lmb/l0;->c:Lmb/v5;

    iget-object p0, p0, Lmb/l0;->d:[Lmb/x3;

    instance-of v0, v0, Lmb/y2;

    if-eqz v0, :cond_0

    invoke-static {p0}, La/a;->b([Lmb/x3;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    invoke-static {p0}, La/a;->b([Lmb/x3;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/v;

    invoke-interface {p0}, Lmb/u;->b()I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Lmb/i6;->L(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()[Lmb/x;
    .locals 6

    iget v0, p0, Lmb/h6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmb/h6;->h:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/u3;

    iget-object v1, p0, Lmb/r2;->g:Lmb/q2;

    iget-object v1, v1, Lmb/q2;->c:[Lmb/p2;

    array-length v2, v1

    new-array v2, v2, [Lmb/x;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {v0, v4}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v4

    check-cast v4, Lmb/x;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lmb/r2;->g:Lmb/q2;

    iget-boolean v5, v5, Lmb/q2;->d:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lmb/a7;->h:Lmb/b;

    invoke-virtual {v5, v4}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object v4

    :cond_0
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :pswitch_0
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/v;

    invoke-virtual {p0}, Lmb/t;->e()[Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lmb/h6;->h:Ljava/lang/Object;

    check-cast v0, Lmb/i6;

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmb/i6;->K([Ljava/lang/Class;)[Lmb/x;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()[Lmb/x;
    .locals 9

    iget v0, p0, Lmb/h6;->f:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast v1, Lmb/u3;

    iget-object v1, v1, Lmb/r2;->h:[Lmb/s5;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    instance-of v6, v5, Lmb/v4;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lmb/v4;

    iget-object v6, v6, Lmb/v4;->e:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    sget-object v7, Lmb/a7;->o:Ljava/util/regex/Pattern;

    aget-object v6, v6, v3

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lmb/h6;->h:Ljava/lang/Object;

    check-cast v6, Lmb/a7;

    invoke-virtual {v6, v5}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v5

    check-cast v5, Lmb/x;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/x;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/x;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/h6;->h:Ljava/lang/Object;

    check-cast p0, [Lmb/x;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lmb/h6;->h:Ljava/lang/Object;

    check-cast v0, Lmb/i6;

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmb/i6;->K([Ljava/lang/Class;)[Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lmb/h6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/u3;

    iget-object p0, p0, Lmb/r2;->g:Lmb/q2;

    iget-boolean p0, p0, Lmb/q2;->d:Z

    return p0

    :pswitch_0
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/v;

    invoke-virtual {p0}, Lmb/t;->j()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lmb/h6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/u3;

    iget-object p0, p0, Lmb/r2;->f:Ljava/lang/String;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/v;

    invoke-virtual {p0}, Lmb/v;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Lmb/x;
    .locals 1

    iget v0, p0, Lmb/h6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmb/h6;->h:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/u3;

    invoke-virtual {v0, p0}, Lmb/a7;->T0(Lmb/r2;)Lmb/b0;

    move-result-object p0

    check-cast p0, Lmb/x;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/v;

    invoke-virtual {p0}, Lmb/v;->l()Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lmb/h6;->h:Ljava/lang/Object;

    check-cast v0, Lmb/i6;

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmb/i6;->J(Ljava/lang/Class;)Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m()Z
    .locals 3

    iget v0, p0, Lmb/h6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/u3;

    iget-object v0, p0, Lmb/l0;->c:Lmb/v5;

    iget-object v1, p0, Lmb/l0;->d:[Lmb/x3;

    instance-of v0, v0, Lmb/y2;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmb/u3;->y()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1}, La/a;->b([Lmb/x3;)I

    move-result p0

    if-ne p0, v2, :cond_2

    :cond_0
    const-string p0, "abstract"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Z
    .locals 1

    iget v0, p0, Lmb/h6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/u3;

    invoke-virtual {p0}, Lmb/u3;->z()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Lmb/v;

    invoke-virtual {p0}, Lmb/v;->n()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lmb/h6;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
