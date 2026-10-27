.class Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;
.super Lorg/codehaus/janino/util/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->injectStatements(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lmb/q1;)Lmb/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field priorityInjected:Z

.field speedInjected:Z

.field turnPenaltyInjected:Z

.field final synthetic val$priorityStatements:Ljava/util/List;

.field final synthetic val$speedStatements:Ljava/util/List;

.field final synthetic val$turnPenaltyStatements:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$speedStatements:Ljava/util/List;

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$priorityStatements:Ljava/util/List;

    iput-object p3, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$turnPenaltyStatements:Ljava/util/List;

    invoke-direct {p0}, Lorg/codehaus/janino/util/v0;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->speedInjected:Z

    iput-boolean p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->priorityInjected:Z

    iput-boolean p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->turnPenaltyInjected:Z

    return-void
.end method


# virtual methods
.method public copyMethodDeclarator(Lmb/u3;)Lmb/u3;
    .locals 10

    iget-object v0, p1, Lmb/r2;->f:Ljava/lang/String;

    const-string v1, "getSpeed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$speedStatements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->speedInjected:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->speedInjected:Z

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$speedStatements:Ljava/util/List;

    invoke-static {p1, p0, v0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->g(Lmb/u3;Lorg/codehaus/janino/util/v0;Ljava/util/List;)Lmb/u3;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "getPriority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$priorityStatements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->priorityInjected:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->priorityInjected:Z

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$priorityStatements:Ljava/util/List;

    invoke-static {p1, p0, v0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->g(Lmb/u3;Lorg/codehaus/janino/util/v0;Ljava/util/List;)Lmb/u3;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "getTurnPenalty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$turnPenaltyStatements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->turnPenaltyInjected:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->turnPenaltyInjected:Z

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomModelParser$2;->val$turnPenaltyStatements:Ljava/util/List;

    invoke-static {p1, p0, v0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->g(Lmb/u3;Lorg/codehaus/janino/util/v0;Ljava/util/List;)Lmb/u3;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lmb/u3;

    iget-object v1, p1, Lmb/m3;->a:Lhb/c;

    iget-object v2, p1, Lmb/l0;->d:[Lmb/x3;

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/v0;->copyModifiers([Lmb/x3;)[Lmb/x3;

    move-result-object v2

    iget-object v3, p1, Lmb/u3;->k:[Lmb/w5;

    invoke-virtual {p0, v3}, Lorg/codehaus/janino/util/v0;->copyOptionalTypeParameters([Lmb/w5;)[Lmb/w5;

    move-result-object v3

    iget-object v4, p1, Lmb/r2;->e:Lmb/s5;

    invoke-virtual {p0, v4}, Lorg/codehaus/janino/util/v0;->copyType(Lmb/s5;)Lmb/s5;

    move-result-object v4

    iget-object v5, p1, Lmb/r2;->f:Ljava/lang/String;

    iget-object v6, p1, Lmb/r2;->g:Lmb/q2;

    invoke-virtual {p0, v6}, Lorg/codehaus/janino/util/v0;->copyFormalParameters(Lmb/q2;)Lmb/q2;

    move-result-object v6

    iget-object v7, p1, Lmb/r2;->h:[Lmb/s5;

    invoke-virtual {p0, v7}, Lorg/codehaus/janino/util/v0;->copyTypes([Lmb/s5;)[Lmb/s5;

    move-result-object v7

    iget-object v8, p1, Lmb/u3;->l:Lmb/z1;

    invoke-virtual {p0, v8}, Lorg/codehaus/janino/util/v0;->copyOptionalElementValue(Lmb/z1;)Lmb/z1;

    move-result-object v8

    iget-object p1, p1, Lmb/r2;->i:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/v0;->copyOptionalStatements(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lmb/u3;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Lmb/z1;Ljava/util/List;)V

    return-object v0
.end method
