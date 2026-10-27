.class public final Lz7/c;
.super Lw7/u;
.source "SourceFile"


# static fields
.field public static final c:Lc8/a;

.field public static final d:Lz7/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/io/Serializable;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lc8/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    sput-object v0, Lz7/c;->c:Lc8/a;

    new-instance v0, Lz7/c;

    sget-object v1, Lw7/t;->m:Lw7/q;

    invoke-direct {v0, v1}, Lz7/c;-><init>(Lw7/t;)V

    new-instance v1, Lz7/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lz7/k;-><init>(ILjava/lang/Object;)V

    sput-object v1, Lz7/c;->d:Lz7/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lz7/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz7/c;->b:Ljava/io/Serializable;

    .line 3
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1, v1, p0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    sget p0, Ly7/h;->a:I

    const/16 v2, 0x9

    if-lt p0, v2, :cond_1

    .line 7
    invoke-static {v1, v1}, Ly7/d;->h(II)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lw7/t;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz7/c;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lz7/c;->b:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final read(Le8/b;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lz7/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 p0, 0x8

    if-ne v1, p0, :cond_0

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lw7/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expecting number, got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le8/b;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lz7/c;->b:Ljava/io/Serializable;

    check-cast p0, Lw7/t;

    invoke-virtual {p0, p1}, Lw7/t;->a(Le8/b;)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz7/c;->b:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lz7/c;->b:Ljava/io/Serializable;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :catch_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance p0, Ljava/text/ParsePosition;

    invoke-direct {p0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {v0, p0}, La8/a;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
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

    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Le8/c;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lz7/c;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1, p2}, Le8/c;->P(Ljava/lang/Number;)V

    return-void

    :pswitch_0
    check-cast p2, Ljava/util/Date;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz7/c;->b:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iget-object p0, p0, Lz7/c;->b:Ljava/io/Serializable;

    check-cast p0, Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p2}, Le8/c;->R(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
