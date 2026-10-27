.class public final Lua/nav/net/b;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lgd/d;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/net/b;->l:Lgd/d;

    iput-object p2, p0, Lua/nav/net/b;->m:Ljava/lang/String;

    iput-object p3, p0, Lua/nav/net/b;->n:Ljava/lang/String;

    iput-object p4, p0, Lua/nav/net/b;->o:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Lua/nav/net/b;

    iget-object v3, p0, Lua/nav/net/b;->n:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/net/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lua/nav/net/b;->l:Lgd/d;

    iget-object v2, p0, Lua/nav/net/b;->m:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lua/nav/net/b;-><init>(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/net/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/net/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/net/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "input"

    const-string v1, "compile(...)"

    sget-object v2, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, p0, Lua/nav/net/b;->l:Lgd/d;

    invoke-virtual {v3}, Lgd/d;->a()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lua/nav/net/b;->m:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/net/b;->n:Ljava/lang/String;

    iget-object p0, p0, Lua/nav/net/b;->o:Ljava/lang/String;

    new-instance v5, Lia/z;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lia/z;-><init>(I)V

    const-string v6, "purpose"

    invoke-static {v5, v6, p1}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string p1, "android_hash"

    invoke-static {v5, p1, v4}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    const-string p1, "model"

    invoke-static {v5, p1, p0}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5}, Lia/z;->b()Lia/y;

    move-result-object p0

    invoke-virtual {p0}, Lia/y;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string p0, "getBytes(...)"

    invoke-static {v7, p0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "POST"

    const-string v5, "/v1/link-token"

    const/4 v6, 0x0

    const/16 v8, 0x14

    invoke-static/range {v3 .. v8}, Lgd/d;->e(Lgd/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lt8/j;

    move-result-object p0

    iget-object p1, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lgd/h;->c:Lia/r;

    sget-object v3, Lua/nav/net/LinkTokenDto;->Companion:Lua/nav/net/LinkTokenDto$Companion;

    invoke-virtual {v3}, Lua/nav/net/LinkTokenDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, v3}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lua/nav/net/LinkTokenDto;

    const-string v3, "^[lr]_[A-Za-z0-9_-]{8,40}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p1, Lua/nav/net/LinkTokenDto;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "^[A-Za-z0-9_]{5,32}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lua/nav/net/LinkTokenDto;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move-object p0, v2

    :goto_0
    check-cast p0, Lua/nav/net/LinkTokenDto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :goto_1
    return-object v2
.end method
