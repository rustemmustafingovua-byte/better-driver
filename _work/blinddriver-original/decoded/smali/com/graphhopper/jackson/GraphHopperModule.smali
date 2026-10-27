.class public Lcom/graphhopper/jackson/GraphHopperModule;
.super Lcom/fasterxml/jackson/databind/module/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/module/d;-><init>()V

    new-instance v0, Lcom/graphhopper/jackson/StatementDeserializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/StatementDeserializer;-><init>()V

    const-class v1, Lcom/graphhopper/json/Statement;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/StatementSerializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/StatementSerializer;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addSerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/JtsEnvelopeDeserializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/JtsEnvelopeDeserializer;-><init>()V

    const-class v1, Lpb/h;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/JtsEnvelopeSerializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/JtsEnvelopeSerializer;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addSerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/GHPointDeserializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/GHPointDeserializer;-><init>()V

    const-class v1, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/GHPointSerializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/GHPointSerializer;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addSerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/PathDetailDeserializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/PathDetailDeserializer;-><init>()V

    const-class v1, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addDeserializer(Ljava/lang/Class;Lb6/n;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/PathDetailSerializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/PathDetailSerializer;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addSerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/InstructionListSerializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/InstructionListSerializer;-><init>()V

    const-class v1, Lcom/graphhopper/util/InstructionList;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addSerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;

    new-instance v0, Lcom/graphhopper/jackson/MultiExceptionSerializer;

    invoke-direct {v0}, Lcom/graphhopper/jackson/MultiExceptionSerializer;-><init>()V

    const-class v1, Lcom/graphhopper/jackson/MultiException;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/d;->addSerializer(Ljava/lang/Class;Lb6/u;)Lcom/fasterxml/jackson/databind/module/d;

    return-void
.end method
