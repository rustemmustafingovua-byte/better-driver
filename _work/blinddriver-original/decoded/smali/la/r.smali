.class public final Lla/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lla/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lla/r;->c:Ljava/lang/String;

    iput-object p4, p0, Lla/r;->d:Ljava/lang/String;

    iput p5, p0, Lla/r;->e:I

    iput-object p6, p0, Lla/r;->f:Ljava/util/List;

    iput-object p7, p0, Lla/r;->g:Ljava/lang/String;

    iput-object p8, p0, Lla/r;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lla/r;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lla/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-static {p0, v2, v0, v1}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-static {p0, v3, v1, v2}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lla/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-static {p0, v2, v0, v1}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v0

    const-string v1, "?#"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lma/c;->d(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lla/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-static {p0, v2, v0, v1}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v0

    const-string v1, "?#"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v0, v1, v3}, Lma/c;->d(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v2, v0, v1}, Lma/c;->c(Ljava/lang/String;CII)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "substring(...)"

    invoke-static {v0, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lla/r;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-static {p0, v2, v0, v1}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x23

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lma/c;->c(Ljava/lang/String;CII)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lla/r;->b:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lla/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const-string v1, ":@"

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lma/c;->d(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lla/r;

    if-eqz v0, :cond_0

    check-cast p1, Lla/r;

    iget-object p1, p1, Lla/r;->h:Ljava/lang/String;

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    const-string v0, "/..."

    :try_start_0
    new-instance v1, Lla/q;

    invoke-direct {v1}, Lla/q;-><init>()V

    invoke-virtual {v1, p0, v0}, Lla/q;->c(Lla/r;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string p0, ""

    const/4 v0, 0x0

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v3, 0x7b

    invoke-static {p0, v0, v2, v0, v3}, Lab/a;->a(Ljava/lang/String;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lla/q;->b:Ljava/lang/String;

    invoke-static {p0, v0, v2, v0, v3}, Lab/a;->a(Ljava/lang/String;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lla/q;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lla/q;->a()Lla/r;

    move-result-object p0

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/net/URI;
    .locals 12

    new-instance v0, Lla/q;

    invoke-direct {v0}, Lla/q;-><init>()V

    iget-object v1, p0, Lla/r;->a:Ljava/lang/String;

    iput-object v1, v0, Lla/q;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lla/r;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lla/q;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lla/r;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lla/q;->c:Ljava/lang/String;

    iget-object v2, p0, Lla/r;->d:Ljava/lang/String;

    iput-object v2, v0, Lla/q;->d:Ljava/lang/String;

    const-string v2, "scheme"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1bb

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget v2, p0, Lla/r;->e:I

    if-eq v2, v1, :cond_2

    move v3, v2

    :cond_2
    iput v3, v0, Lla/q;->e:I

    iget-object v1, v0, Lla/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lla/r;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lla/r;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const-string v5, " \"\'<>#"

    const/16 v6, 0x53

    invoke-static {v2, v3, v5, v3, v6}, Lab/a;->a(Ljava/lang/String;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lla/q;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    iput-object v2, v0, Lla/q;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lla/r;->g:Ljava/lang/String;

    const/16 v5, 0x23

    if-nez v2, :cond_4

    move-object p0, v4

    goto :goto_2

    :cond_4
    const/4 v2, 0x6

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    invoke-static {p0, v5, v3, v2}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "substring(...)"

    invoke-static {p0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iput-object p0, v0, Lla/q;->h:Ljava/lang/String;

    iget-object p0, v0, Lla/q;->d:Ljava/lang/String;

    const-string v2, "replaceAll(...)"

    const-string v6, ""

    const-string v7, "compile(...)"

    if-eqz p0, :cond_5

    const-string v8, "[\"<>^`{|}]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-static {v8, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object p0, v4

    :goto_3
    iput-object p0, v0, Lla/q;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v8, v3

    :goto_4
    if-ge v8, p0, :cond_6

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "[]"

    const/16 v11, 0x63

    invoke-static {v9, v3, v10, v3, v11}, Lab/a;->a(Ljava/lang/String;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    iget-object p0, v0, Lla/q;->g:Ljava/util/ArrayList;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v8, v3

    :goto_5
    if-ge v8, v1, :cond_8

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_7

    const-string v10, "\\^`{|}"

    const/16 v11, 0x43

    invoke-static {v9, v3, v10, v3, v11}, Lab/a;->a(Ljava/lang/String;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    move-object v9, v4

    :goto_6
    invoke-interface {p0, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    iget-object p0, v0, Lla/q;->h:Ljava/lang/String;

    if-eqz p0, :cond_9

    const-string v1, " \"#<>\\^`{|}"

    invoke-static {p0, v3, v1, v3, v5}, Lab/a;->a(Ljava/lang/String;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :cond_9
    iput-object v4, v0, Lla/q;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lla/q;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {p0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0

    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lla/r;->h:Ljava/lang/String;

    return-object p0
.end method
