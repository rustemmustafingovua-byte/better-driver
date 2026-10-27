.class public final Lcom/graphhopper/json/Statement;
.super Lr0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/json/Statement$Op;,
        Lcom/graphhopper/json/Statement$Keyword;
    }
.end annotation


# instance fields
.field private final condition:Ljava/lang/String;

.field private final doBlock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private final keyword:Lcom/graphhopper/json/Statement$Keyword;

.field private final operation:Lcom/graphhopper/json/Statement$Op;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/graphhopper/json/Statement$Keyword;Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/json/Statement$Keyword;",
            "Ljava/lang/String;",
            "Lcom/graphhopper/json/Statement$Op;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_a

    if-eqz p5, :cond_1

    sget-object v0, Lcom/graphhopper/json/Statement$Op;->DO:Lcom/graphhopper/json/Statement$Op;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For \'doBlock\' you have to use Op.DO"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p5, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'doBlock\' or \'value\' cannot be both non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-nez p5, :cond_5

    invoke-static {p4}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "a leaf statement must have a non-empty \'value\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All statements (except \'else\') have to use a non-empty \'condition\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    if-eq p1, v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For the \'else\' statement you have to use an empty \'condition\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    iput-object p1, p0, Lcom/graphhopper/json/Statement;->keyword:Lcom/graphhopper/json/Statement$Keyword;

    iput-object p2, p0, Lcom/graphhopper/json/Statement;->condition:Ljava/lang/String;

    iput-object p3, p0, Lcom/graphhopper/json/Statement;->operation:Lcom/graphhopper/json/Statement$Op;

    iput-object p4, p0, Lcom/graphhopper/json/Statement;->value:Ljava/lang/String;

    iput-object p5, p0, Lcom/graphhopper/json/Statement;->doBlock:Ljava/util/List;

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'condition\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Else(Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;
    .locals 6

    .line 2
    new-instance v0, Lcom/graphhopper/json/Statement;

    sget-object v1, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    const-string v2, ""

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/json/Statement;-><init>(Lcom/graphhopper/json/Statement$Keyword;Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static Else(Ljava/util/List;)Lcom/graphhopper/json/Statement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;)",
            "Lcom/graphhopper/json/Statement;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/graphhopper/json/Statement;

    sget-object v1, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    sget-object v3, Lcom/graphhopper/json/Statement$Op;->DO:Lcom/graphhopper/json/Statement$Op;

    const/4 v4, 0x0

    const-string v2, ""

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/json/Statement;-><init>(Lcom/graphhopper/json/Statement$Keyword;Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static ElseIf(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;
    .locals 6

    .line 2
    new-instance v0, Lcom/graphhopper/json/Statement;

    sget-object v1, Lcom/graphhopper/json/Statement$Keyword;->ELSEIF:Lcom/graphhopper/json/Statement$Keyword;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/json/Statement;-><init>(Lcom/graphhopper/json/Statement$Keyword;Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static ElseIf(Ljava/lang/String;Ljava/util/List;)Lcom/graphhopper/json/Statement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;)",
            "Lcom/graphhopper/json/Statement;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/graphhopper/json/Statement;

    sget-object v1, Lcom/graphhopper/json/Statement$Keyword;->ELSEIF:Lcom/graphhopper/json/Statement$Keyword;

    sget-object v3, Lcom/graphhopper/json/Statement$Op;->DO:Lcom/graphhopper/json/Statement$Op;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/json/Statement;-><init>(Lcom/graphhopper/json/Statement$Keyword;Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static If(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;
    .locals 6

    .line 2
    new-instance v0, Lcom/graphhopper/json/Statement;

    sget-object v1, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/json/Statement;-><init>(Lcom/graphhopper/json/Statement$Keyword;Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static If(Ljava/lang/String;Ljava/util/List;)Lcom/graphhopper/json/Statement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;)",
            "Lcom/graphhopper/json/Statement;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/graphhopper/json/Statement;

    sget-object v1, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    sget-object v3, Lcom/graphhopper/json/Statement$Op;->DO:Lcom/graphhopper/json/Statement$Op;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/json/Statement;-><init>(Lcom/graphhopper/json/Statement$Keyword;Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public condition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->condition:Ljava/lang/String;

    return-object p0
.end method

.method public doBlock()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->doBlock:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\'doBlock\' is not supported for leaf statement."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/graphhopper/json/Statement;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/graphhopper/json/Statement;

    iget-object v0, p0, Lcom/graphhopper/json/Statement;->keyword:Lcom/graphhopper/json/Statement$Keyword;

    iget-object v1, p1, Lcom/graphhopper/json/Statement;->keyword:Lcom/graphhopper/json/Statement$Keyword;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/json/Statement;->condition:Ljava/lang/String;

    iget-object v1, p1, Lcom/graphhopper/json/Statement;->condition:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/json/Statement;->operation:Lcom/graphhopper/json/Statement$Op;

    iget-object v1, p1, Lcom/graphhopper/json/Statement;->operation:Lcom/graphhopper/json/Statement$Op;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/json/Statement;->value:Ljava/lang/String;

    iget-object v1, p1, Lcom/graphhopper/json/Statement;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->doBlock:Ljava/util/List;

    iget-object p1, p1, Lcom/graphhopper/json/Statement;->doBlock:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/json/Statement;->keyword:Lcom/graphhopper/json/Statement$Keyword;

    iget-object v1, p0, Lcom/graphhopper/json/Statement;->condition:Ljava/lang/String;

    iget-object v2, p0, Lcom/graphhopper/json/Statement;->operation:Lcom/graphhopper/json/Statement$Op;

    iget-object v3, p0, Lcom/graphhopper/json/Statement;->value:Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->doBlock:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public isBlock()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->doBlock:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public keyword()Lcom/graphhopper/json/Statement$Keyword;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->keyword:Lcom/graphhopper/json/Statement$Keyword;

    return-object p0
.end method

.method public operation()Lcom/graphhopper/json/Statement$Op;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->operation:Lcom/graphhopper/json/Statement$Op;

    return-object p0
.end method

.method public toPrettyString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/json/Statement;->keyword:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/json/Statement;->condition:Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->doBlock:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/graphhopper/routing/ev/f;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v2, ",\n  "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "\": \""

    const-string v3, "\",\n  \"do\": [\n"

    const-string v4, "{\""

    invoke-static {v4, v0, v2, v1, v3}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ]\n}"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/json/Statement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v0

    const-string v1, "{\""

    const-string v2, "\": \""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/json/Statement;->keyword:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/graphhopper/json/Statement;->condition:Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->doBlock:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "\", \"do\": "

    invoke-static {v1, v0, v2, v3, v4}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/json/Statement;->keyword:Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, Lcom/graphhopper/json/Statement$Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/graphhopper/json/Statement;->condition:Ljava/lang/String;

    iget-object v4, p0, Lcom/graphhopper/json/Statement;->operation:Lcom/graphhopper/json/Statement$Op;

    invoke-virtual {v4}, Lcom/graphhopper/json/Statement$Op;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->value:Ljava/lang/String;

    const-string v5, "\", \""

    invoke-static {v1, v0, v2, v3, v5}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/json/Statement;->isBlock()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/json/Statement;->value:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "\'value\' is not supported for block statement."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
