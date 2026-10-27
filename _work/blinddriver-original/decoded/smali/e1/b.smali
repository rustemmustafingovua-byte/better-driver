.class public abstract Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lpb/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le1/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrb/d;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p1, Lrb/d;->q:Le/a;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Le/a;

    .line 7
    iget-object v1, p1, Lg5/c;->m:Ljava/lang/Object;

    check-cast v1, Lpb/i;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 9
    iput-object v2, v0, Le/a;->m:Ljava/lang/Object;

    .line 10
    iput-object v1, v0, Le/a;->l:Ljava/io/Serializable;

    .line 11
    iput-object v0, p1, Lrb/d;->q:Le/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p1, Lrb/d;->q:Le/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 13
    iput-object v0, p0, Le1/b;->a:Ljava/lang/Object;

    return-void

    .line 14
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public b(ILr0/l0;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p2, Lr0/l0;->a:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Le1/b;->c(ILr0/l0;Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lr0/a;

    if-eqz v6, :cond_1

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v3, p2, v5}, Le1/b;->c(ILr0/l0;Ljava/lang/Object;)V

    return v1

    :cond_1
    instance-of v6, v5, Lr0/l0;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Lr0/l0;

    invoke-virtual {p0, p1, v6, p3}, Le1/b;->b(ILr0/l0;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v3, p2, v5}, Le1/b;->c(ILr0/l0;Ljava/lang/Object;)V

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected child source info "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public c(ILr0/l0;Ljava/lang/Object;)V
    .locals 0

    new-instance p2, Le1/c;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Le1/c;-><init>(ILpc/h;Ljava/lang/Integer;)V

    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(ILjava/lang/Object;Lr0/l0;Ljava/lang/Object;)V
    .locals 0

    sget-object p4, Lr0/m;->a:Lr0/e;

    invoke-static {p2, p4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Le1/b;->c(ILr0/l0;Ljava/lang/Object;)V

    return-void
.end method
