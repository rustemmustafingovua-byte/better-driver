.class public Lcom/graphhopper/util/InstructionList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/graphhopper/util/Instruction;",
        ">;"
    }
.end annotation


# instance fields
.field private final instructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final tr:Lcom/graphhopper/util/Translation;


# direct methods
.method public constructor <init>(ILcom/graphhopper/util/Translation;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/util/InstructionList;->instructions:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/graphhopper/util/InstructionList;->tr:Lcom/graphhopper/util/Translation;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/util/Translation;)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/graphhopper/util/InstructionList;-><init>(ILcom/graphhopper/util/Translation;)V

    return-void
.end method


# virtual methods
.method public add(ILcom/graphhopper/util/Instruction;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/util/InstructionList;->instructions:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/graphhopper/util/Instruction;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/InstructionList;->add(ILcom/graphhopper/util/Instruction;)V

    return-void
.end method

.method public get(I)Lcom/graphhopper/util/Instruction;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/util/InstructionList;->instructions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/Instruction;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object p0

    return-object p0
.end method

.method public getTr()Lcom/graphhopper/util/Translation;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/InstructionList;->tr:Lcom/graphhopper/util/Translation;

    return-object p0
.end method

.method public remove(I)Lcom/graphhopper/util/Instruction;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/util/InstructionList;->instructions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/Instruction;

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/util/InstructionList;->remove(I)Lcom/graphhopper/util/Instruction;

    move-result-object p0

    return-object p0
.end method

.method public set(ILcom/graphhopper/util/Instruction;)Lcom/graphhopper/util/Instruction;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/util/InstructionList;->instructions:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/Instruction;

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lcom/graphhopper/util/Instruction;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/InstructionList;->set(ILcom/graphhopper/util/Instruction;)Lcom/graphhopper/util/Instruction;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/InstructionList;->instructions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
