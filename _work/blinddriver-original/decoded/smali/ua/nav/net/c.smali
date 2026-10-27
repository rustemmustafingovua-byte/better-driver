.class public final Lua/nav/net/c;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lgd/d;

.field public final synthetic m:J


# direct methods
.method public constructor <init>(Lgd/d;JLy8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/net/c;->l:Lgd/d;

    iput-wide p2, p0, Lua/nav/net/c;->m:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    new-instance p1, Lua/nav/net/c;

    iget-object v0, p0, Lua/nav/net/c;->l:Lgd/d;

    iget-wide v1, p0, Lua/nav/net/c;->m:J

    invoke-direct {p1, v0, v1, v2, p2}, Lua/nav/net/c;-><init>(Lgd/d;JLy8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/net/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/net/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/net/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-wide v0, p0, Lua/nav/net/c;->m:J

    const-string v2, "?after="

    sget-object v3, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v4, p0, Lua/nav/net/c;->l:Lgd/d;

    invoke-virtual {v4}, Lgd/d;->a()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    const-string v5, "GET"

    const-string v6, "/v1/messages"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x18

    invoke-static/range {v4 .. v9}, Lgd/d;->e(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lt8/j;

    move-result-object p0

    iget-object p1, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    sget-object p1, Lgd/h;->c:Lia/r;

    sget-object v2, Lua/nav/net/AppMsgsDto;->Companion:Lua/nav/net/AppMsgsDto$Companion;

    invoke-virtual {v2}, Lua/nav/net/AppMsgsDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, v2}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/net/AppMsgsDto;

    iget-object p0, p0, Lua/nav/net/AppMsgsDto;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lua/nav/net/AppMsgDto;

    iget-wide v4, v3, Lua/nav/net/AppMsgDto;->a:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    iget-object v3, v3, Lua/nav/net/AppMsgDto;->b:Ljava/lang/String;

    invoke-static {v3}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lua/nav/net/AppMsgDto;

    new-instance v3, Lua/nav/support/DevMessage;

    iget-wide v4, v2, Lua/nav/net/AppMsgDto;->a:J

    iget-object v6, v2, Lua/nav/net/AppMsgDto;->b:Ljava/lang/String;

    const/16 v7, 0x7d0

    invoke-static {v7, v6}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v2, Lua/nav/net/AppMsgDto;->c:J

    const/16 v2, 0x3e8

    int-to-long v9, v2

    mul-long/2addr v7, v9

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lua/nav/support/DevMessage;-><init>(JLjava/lang/String;JZ)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    return-object p0

    :catch_0
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
