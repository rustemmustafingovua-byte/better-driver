.class public final Lz7/a;
.super Lw7/u;
.source "SourceFile"


# static fields
.field public static final d:Lc8/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    sput-object v0, Lz7/a;->d:Lc8/a;

    return-void
.end method

.method public constructor <init>(Lw7/l;Ljava/lang/reflect/Type;Lw7/u;Ly7/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz7/a;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lz7/j;

    invoke-direct {v0, p1, p3, p2}, Lz7/j;-><init>(Lw7/l;Lw7/u;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lz7/a;->b:Ljava/lang/Object;

    .line 3
    iput-object p4, p0, Lz7/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw7/l;Lw7/u;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz7/a;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lz7/j;

    invoke-direct {v0, p1, p2, p3}, Lz7/j;-><init>(Lw7/l;Lw7/u;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lz7/a;->b:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lz7/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz7/e;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lz7/a;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz7/a;->b:Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz7/a;->c:Ljava/lang/Object;

    .line 10
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2, p3, p0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 12
    invoke-static {p2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    sget p0, Ly7/h;->a:I

    const/16 p1, 0x9

    if-lt p0, p1, :cond_1

    .line 14
    invoke-static {p2, p3}, Ly7/d;->h(II)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lz7/r;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lz7/a;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lz7/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lz7/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final read(Le8/b;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lz7/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz7/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object p0, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast p0, Lz7/r;

    iget-object p0, p0, Lz7/r;->n:Lw7/u;

    invoke-virtual {p0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lw7/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; at path "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :catch_0
    if-ge v5, v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {v0, v1}, La8/a;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    iget-object p0, p0, Lz7/a;->c:Ljava/lang/Object;

    check-cast p0, Lz7/e;

    invoke-virtual {p0, p1}, Lz7/e;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    :goto_2
    return-object p0

    :catch_1
    move-exception p0

    new-instance v1, Lw7/n;

    const-string v2, "Failed parsing \'"

    const-string v3, "\' as Date; at path "

    invoke-static {v2, v0, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_1
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lz7/a;->c:Ljava/lang/Object;

    check-cast v0, Ly7/o;

    invoke-interface {v0}, Ly7/o;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Le8/b;->b()V

    :goto_4
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast v1, Lz7/j;

    iget-object v1, v1, Lz7/j;->c:Ljava/lang/Object;

    check-cast v1, Lw7/u;

    invoke-virtual {v1, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Le8/b;->k()V

    move-object p0, v0

    :goto_5
    return-object p0

    :pswitch_2
    iget-object v0, p0, Lz7/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Le8/b;->b()V

    :goto_6
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast v2, Lz7/j;

    iget-object v2, v2, Lz7/j;->c:Ljava/lang/Object;

    check-cast v2, Lw7/u;

    invoke-virtual {v2, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Le8/b;->k()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p0, :cond_8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    move-object p0, p1

    goto :goto_8

    :cond_9
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    :goto_8
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lz7/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/DateFormat;

    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    const/16 v1, 0x29

    const-string v2, "DefaultDateTypeAdapter("

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Le8/c;Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lz7/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast p0, Lz7/r;

    iget-object p0, p0, Lz7/r;->n:Lw7/u;

    invoke-virtual {p0, p1, p2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p2, Ljava/util/Date;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iget-object p0, p0, Lz7/a;->b:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p0}, Le8/c;->R(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Le8/c;->c()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast v1, Lz7/j;

    invoke-virtual {v1, p1, v0}, Lz7/j;->write(Le8/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Le8/c;->k()V

    :goto_2
    return-void

    :pswitch_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Le8/c;->c()V

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_4

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lz7/a;->b:Ljava/lang/Object;

    check-cast v3, Lz7/j;

    invoke-virtual {v3, p1, v2}, Lz7/j;->write(Le8/c;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Le8/c;->k()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
