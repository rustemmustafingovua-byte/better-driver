.class public final Lc8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/v;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc8/a;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lw7/l;Ld8/a;)Lw7/u;
    .locals 1

    iget p0, p0, Lc8/a;->l:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class p1, Ljava/lang/Enum;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :cond_1
    new-instance p1, Lz7/j;

    invoke-direct {p1, p0}, Lz7/j;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_0
    iget-object p0, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class p1, Ljava/util/Date;

    if-ne p0, p1, :cond_3

    new-instance p0, Lz7/c;

    invoke-direct {p0}, Lz7/c;-><init>()V

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_1
    iget-object p0, p2, Ld8/a;->b:Ljava/lang/reflect/Type;

    instance-of p2, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez p2, :cond_5

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 p0, 0x0

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_3

    :cond_6
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    :goto_3
    new-instance p2, Ld8/a;

    invoke-direct {p2, p0}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object p2

    new-instance v0, Lz7/a;

    invoke-static {p0}, Ly7/d;->g(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lz7/a;-><init>(Lw7/l;Lw7/u;Ljava/lang/Class;)V

    move-object p0, v0

    :goto_4
    return-object p0

    :pswitch_2
    iget-object p0, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class p2, Ljava/sql/Timestamp;

    if-ne p0, p2, :cond_7

    new-instance p0, Ld8/a;

    const-class p2, Ljava/util/Date;

    invoke-direct {p0, p2}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p0}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object p0

    new-instance p1, Lc8/b;

    invoke-direct {p1, p0}, Lc8/b;-><init>(Lw7/u;)V

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_5
    return-object p1

    :pswitch_3
    iget-object p0, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class p1, Ljava/sql/Time;

    if-ne p0, p1, :cond_8

    new-instance p0, Lc8/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lc8/b;-><init>(I)V

    goto :goto_6

    :cond_8
    const/4 p0, 0x0

    :goto_6
    return-object p0

    :pswitch_4
    iget-object p0, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class p1, Ljava/sql/Date;

    if-ne p0, p1, :cond_9

    new-instance p0, Lc8/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc8/b;-><init>(I)V

    goto :goto_7

    :cond_9
    const/4 p0, 0x0

    :goto_7
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
