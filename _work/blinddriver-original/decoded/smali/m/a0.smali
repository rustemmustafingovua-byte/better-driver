.class public final Lm/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lm/a0;


# instance fields
.field public final a:Lm/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lm/a0;

    new-instance v1, Lm/j0;

    const/4 v5, 0x0

    const/16 v6, 0x7f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lm/j0;-><init>(Lm/c0;Lm/o;Lm/g0;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v0, v1}, Lm/a0;-><init>(Lm/j0;)V

    sput-object v0, Lm/a0;->b:Lm/a0;

    return-void
.end method

.method public constructor <init>(Lm/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/a0;->a:Lm/j0;

    return-void
.end method


# virtual methods
.method public final a(Lm/a0;)Lm/a0;
    .locals 7

    new-instance v0, Lm/a0;

    new-instance v1, Lm/j0;

    iget-object p1, p1, Lm/a0;->a:Lm/j0;

    iget-object v2, p1, Lm/j0;->a:Lm/c0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    if-nez v2, :cond_0

    iget-object v2, p0, Lm/j0;->a:Lm/c0;

    :cond_0
    iget-object v3, p1, Lm/j0;->b:Lm/o;

    if-nez v3, :cond_1

    iget-object v3, p0, Lm/j0;->b:Lm/o;

    :cond_1
    iget-object v4, p1, Lm/j0;->c:Lm/g0;

    if-nez v4, :cond_2

    iget-object v4, p0, Lm/j0;->c:Lm/g0;

    :cond_2
    iget-object p0, p0, Lm/j0;->e:Ljava/util/Map;

    iget-object p1, p1, Lm/j0;->e:Ljava/util/Map;

    const-string v5, "<this>"

    invoke-static {p0, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "map"

    invoke-static {p1, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    const/16 v6, 0x20

    invoke-direct/range {v1 .. v6}, Lm/j0;-><init>(Lm/c0;Lm/o;Lm/g0;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v0, v1}, Lm/a0;-><init>(Lm/j0;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lm/a0;

    if-eqz v0, :cond_0

    check-cast p1, Lm/a0;

    iget-object p1, p1, Lm/a0;->a:Lm/j0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    invoke-virtual {p0}, Lm/j0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lm/a0;->b:Lm/a0;

    invoke-virtual {p0, v0}, Lm/a0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "EnterTransition.None"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnterTransition: \nFade - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    iget-object v1, p0, Lm/j0;->a:Lm/c0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm/c0;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, ",\nSlide - "

    const-string v4, ",\nShrink - "

    invoke-static {v0, v1, v3, v2, v4}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lm/j0;->b:Lm/o;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lm/o;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\nScale - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm/j0;->c:Lm/g0;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lm/g0;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
