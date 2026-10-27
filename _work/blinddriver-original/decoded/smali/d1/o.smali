.class public final synthetic Ld1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/c;


# direct methods
.method public synthetic constructor <init>(Li9/c;I)V
    .locals 0

    iput p2, p0, Ld1/o;->l:I

    iput-object p1, p0, Ld1/o;->m:Li9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ld1/o;->l:I

    iget-object p0, p0, Ld1/o;->m:Li9/c;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ld1/m;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld1/g;

    sget-object p1, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Ld1/p;->d:Ld1/m;

    invoke-virtual {p0}, Ld1/g;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld1/m;->e(J)Ld1/m;

    move-result-object v0

    sput-object v0, Ld1/p;->d:Ld1/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
