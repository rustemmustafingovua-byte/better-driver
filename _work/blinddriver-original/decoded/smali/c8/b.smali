.class public final Lc8/b;
.super Lw7/u;
.source "SourceFile"


# static fields
.field public static final c:Lc8/a;

.field public static final d:Lc8/a;

.field public static final e:Lc8/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lc8/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    sput-object v0, Lc8/b;->c:Lc8/a;

    new-instance v0, Lc8/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    sput-object v0, Lc8/b;->d:Lc8/a;

    new-instance v0, Lc8/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc8/a;-><init>(I)V

    sput-object v0, Lc8/b;->e:Lc8/a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lc8/b;->a:I

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM d, yyyy"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc8/b;->b:Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm:ss a"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc8/b;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lw7/u;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc8/b;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lc8/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final read(Le8/b;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lc8/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc8/b;->b:Ljava/lang/Object;

    check-cast p0, Lw7/u;

    invoke-virtual {p0, p1}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_0
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Le8/b;->V()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Le8/b;->X()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lc8/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/sql/Time;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Time;-><init>(J)V

    monitor-exit p0

    move-object p0, v2

    :goto_1
    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v1, Lw7/n;

    const-string v2, "Failed parsing \'"

    const-string v3, "\' as SQL Time; at path "

    invoke-static {v2, v0, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
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

    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v1, p0, Lc8/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance p0, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_3
    new-instance v1, Lw7/n;

    const-string v2, "Failed parsing \'"

    const-string v3, "\' as SQL Date; at path "

    invoke-static {v2, v0, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Le8/b;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Le8/c;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lc8/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/sql/Timestamp;

    iget-object p0, p0, Lc8/b;->b:Ljava/lang/Object;

    check-cast p0, Lw7/u;

    invoke-virtual {p0, p1, p2}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p2, Ljava/sql/Time;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/text/SimpleDateFormat;

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

    :pswitch_1
    check-cast p2, Ljava/sql/Date;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    goto :goto_1

    :cond_1
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lc8/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p1, p2}, Le8/c;->R(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
