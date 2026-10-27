.class public final Lr9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Lr9/f;

.field public d:Lr9/e;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr9/g;->a:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lr9/g;->b:Ljava/lang/CharSequence;

    new-instance p1, Lr9/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lr9/f;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lr9/g;->c:Lr9/f;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lr9/g;->d:Lr9/e;

    if-nez v0, :cond_0

    new-instance v0, Lr9/e;

    invoke-direct {v0, p0}, Lr9/e;-><init>(Lr9/g;)V

    iput-object v0, p0, Lr9/g;->d:Lr9/e;

    :cond_0
    iget-object p0, p0, Lr9/g;->d:Lr9/e;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lo9/d;
    .locals 1

    iget-object p0, p0, Lr9/g;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    invoke-static {v0, p0}, Lg6/c1;->G(II)Lo9/d;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lr9/g;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    const-string v0, "group(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Lr9/g;
    .locals 4

    iget-object v0, p0, Lr9/g;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iget-object p0, p0, Lr9/g;->b:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, "matcher(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p0}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
