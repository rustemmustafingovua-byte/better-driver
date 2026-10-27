.class public Lcom/graphhopper/reader/osm/WaySegmentParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;,
        Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;,
        Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;,
        Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;,
        Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;,
        Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;,
        Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;,
        Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;,
        Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    }
.end annotation


# static fields
.field private static final INCLUDE_IF_NODE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lnc/b;


# instance fields
.field private edgeHandler:Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;

.field private elevationProvider:Ljava/util/function/ToDoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToDoubleFunction<",
            "Lcom/graphhopper/reader/ReaderNode;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeData:Lcom/graphhopper/reader/osm/OSMNodeData;

.field private relationPreprocessor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/graphhopper/reader/ReaderRelation;",
            ">;"
        }
    .end annotation
.end field

.field private relationProcessor:Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;

.field private splitNodeFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/graphhopper/reader/ReaderNode;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;

.field private wayFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/graphhopper/reader/ReaderWay;",
            ">;"
        }
    .end annotation
.end field

.field private wayPreprocessor:Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;

.field private workerThreads:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/WaySegmentParser;->LOGGER:Lnc/b;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "crossing"

    const-string v2, "ford"

    const-string v3, "barrier"

    const-string v4, "highway"

    const-string v5, "railway"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/graphhopper/reader/osm/WaySegmentParser;->INCLUDE_IF_NODE_TAGS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lcom/graphhopper/reader/osm/OSMNodeData;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/graphhopper/reader/osm/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->elevationProvider:Ljava/util/function/ToDoubleFunction;

    .line 4
    new-instance v0, Lcom/graphhopper/reader/osm/h;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->wayFilter:Ljava/util/function/Predicate;

    .line 5
    new-instance v0, Lcom/graphhopper/reader/osm/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->splitNodeFilter:Ljava/util/function/Predicate;

    .line 6
    new-instance v0, Lcom/graphhopper/reader/osm/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->wayPreprocessor:Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;

    .line 7
    new-instance v0, Lcom/graphhopper/reader/osm/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->relationPreprocessor:Ljava/util/function/Consumer;

    .line 8
    new-instance v0, Lcom/graphhopper/reader/osm/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->relationProcessor:Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;

    .line 9
    new-instance v0, Lcom/graphhopper/reader/osm/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->edgeHandler:Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->workerThreads:I

    .line 11
    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->nodeData:Lcom/graphhopper/reader/osm/OSMNodeData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/OSMNodeData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;-><init>(Lcom/graphhopper/reader/osm/OSMNodeData;)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->lambda$new$1(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser;->lambda$new$3(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V

    return-void
.end method

.method public static synthetic c(Lcom/graphhopper/reader/ReaderNode;)D
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->lambda$new$0(Lcom/graphhopper/reader/ReaderNode;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(Lcom/graphhopper/reader/ReaderNode;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->lambda$new$2(Lcom/graphhopper/reader/ReaderNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/osm/WaySegmentParser;->lambda$new$6(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->lambda$new$5(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V

    return-void
.end method

.method public static synthetic g(Lcom/graphhopper/reader/ReaderRelation;)V
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->lambda$new$4(Lcom/graphhopper/reader/ReaderRelation;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->edgeHandler:Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/ToDoubleFunction;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->elevationProvider:Ljava/util/function/ToDoubleFunction;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->nodeData:Lcom/graphhopper/reader/osm/OSMNodeData;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->relationPreprocessor:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->relationProcessor:Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;

    return-object p0
.end method

.method private static synthetic lambda$new$0(Lcom/graphhopper/reader/ReaderNode;)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static synthetic lambda$new$1(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$2(Lcom/graphhopper/reader/ReaderNode;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$3(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$new$4(Lcom/graphhopper/reader/ReaderRelation;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$new$5(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$new$6(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V
    .locals 2

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Lcom/graphhopper/util/PointList;->size()I

    move-result p2

    const-string p4, "->"

    const-string v0, " ("

    const-string v1, "edge "

    invoke-static {v1, p0, p4, p1, v0}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " points)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->splitNodeFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->wayFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->wayPreprocessor:Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/graphhopper/reader/osm/WaySegmentParser;Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->edgeHandler:Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;

    return-void
.end method

.method public static bridge synthetic q(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/function/ToDoubleFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->elevationProvider:Ljava/util/function/ToDoubleFunction;

    return-void
.end method

.method public static bridge synthetic r(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->relationPreprocessor:Ljava/util/function/Consumer;

    return-void
.end method

.method private readOSM(Ljava/io/File;Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;Lcom/graphhopper/reader/osm/SkipOptions;)V
    .locals 2

    .line 27
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/reader/osm/WaySegmentParser;->openOsmInputFile(Ljava/io/File;Lcom/graphhopper/reader/osm/SkipOptions;)Lcom/graphhopper/reader/osm/OSMInput;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    :try_start_1
    invoke-interface {p0}, Lcom/graphhopper/reader/osm/OSMInput;->getNext()Lcom/graphhopper/reader/ReaderElement;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 29
    invoke-interface {p2, p3}, Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;->handleElement(Lcom/graphhopper/reader/ReaderElement;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;->onFinish()V

    .line 31
    invoke-interface {p0}, Lcom/graphhopper/reader/osm/OSMInput;->getUnprocessedElements()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz p2, :cond_1

    .line 32
    :try_start_2
    invoke-static {p0}, La6/q;->s(Lcom/graphhopper/reader/osm/OSMInput;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    .line 33
    :cond_1
    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/graphhopper/reader/osm/OSMInput;->getUnprocessedElements()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There were some remaining elements in the reader queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p0, :cond_2

    .line 34
    :try_start_4
    invoke-static {p0}, La6/q;->s(Lcom/graphhopper/reader/osm/OSMInput;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 35
    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Could not parse OSM file: "

    .line 36
    invoke-static {p3, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static bridge synthetic s(Lcom/graphhopper/reader/osm/WaySegmentParser;Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->relationProcessor:Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;

    return-void
.end method

.method public static bridge synthetic t(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/function/Predicate;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->splitNodeFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public static bridge synthetic u(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public static bridge synthetic v(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/function/Predicate;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->wayFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public static bridge synthetic w(Lcom/graphhopper/reader/osm/WaySegmentParser;Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->wayPreprocessor:Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;

    return-void
.end method

.method public static bridge synthetic x(Lcom/graphhopper/reader/osm/WaySegmentParser;I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->workerThreads:I

    return-void
.end method

.method public static bridge synthetic y()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/graphhopper/reader/osm/WaySegmentParser;->INCLUDE_IF_NODE_TAGS:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic z()Lnc/b;
    .locals 1

    sget-object v0, Lcom/graphhopper/reader/osm/WaySegmentParser;->LOGGER:Lnc/b;

    return-object v0
.end method


# virtual methods
.method public getTimestamp()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->timestamp:Ljava/util/Date;

    return-object p0
.end method

.method public openOsmInputFile(Ljava/io/File;Lcom/graphhopper/reader/osm/SkipOptions;)Lcom/graphhopper/reader/osm/OSMInput;
    .locals 1

    new-instance v0, Lcom/graphhopper/reader/osm/OSMInputFile;

    invoke-direct {v0, p1}, Lcom/graphhopper/reader/osm/OSMInputFile;-><init>(Ljava/io/File;)V

    iget p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->workerThreads:I

    invoke-virtual {v0, p0}, Lcom/graphhopper/reader/osm/OSMInputFile;->setWorkerThreads(I)Lcom/graphhopper/reader/osm/OSMInputFile;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/graphhopper/reader/osm/OSMInputFile;->setSkipOptions(Lcom/graphhopper/reader/osm/SkipOptions;)Lcom/graphhopper/reader/osm/OSMInputFile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/OSMInputFile;->open()Lcom/graphhopper/reader/osm/OSMInputFile;

    move-result-object p0

    return-object p0
.end method

.method public readOSM(Ljava/io/File;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->nodeData:Lcom/graphhopper/reader/osm/OSMNodeData;

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/OSMNodeData;->getNodeCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lcom/graphhopper/reader/osm/WaySegmentParser;->LOGGER:Lnc/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start reading OSM file: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    .line 3
    const-string v1, "pass1 - start"

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/graphhopper/util/StopWatch;->started()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;-><init>(Lcom/graphhopper/reader/osm/WaySegmentParser;I)V

    new-instance v4, Lcom/graphhopper/reader/osm/SkipOptions;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3, v3}, Lcom/graphhopper/reader/osm/SkipOptions;-><init>(ZZZ)V

    invoke-direct {p0, p1, v2, v4}, Lcom/graphhopper/reader/osm/WaySegmentParser;->readOSM(Ljava/io/File;Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;Lcom/graphhopper/reader/osm/SkipOptions;)V

    .line 6
    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->getTimeString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pass1 - finished, took: {}"

    invoke-interface {v0, v2, v4}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->nodeData:Lcom/graphhopper/reader/osm/OSMNodeData;

    invoke-virtual {v2}, Lcom/graphhopper/reader/osm/OSMNodeData;->getNodeCount()J

    move-result-wide v4

    .line 8
    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Creating graph. Node count (pillar+tower): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lnc/b;->k(Ljava/lang/String;)V

    .line 9
    const-string v2, "pass2 - start"

    invoke-interface {v0, v2}, Lnc/b;->k(Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v2}, Lcom/graphhopper/util/StopWatch;-><init>()V

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    move-result-object v2

    .line 11
    new-instance v4, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

    invoke-direct {v4, p0, v3}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;-><init>(Lcom/graphhopper/reader/osm/WaySegmentParser;I)V

    invoke-static {}, Lcom/graphhopper/reader/osm/SkipOptions;->none()Lcom/graphhopper/reader/osm/SkipOptions;

    move-result-object v3

    invoke-direct {p0, p1, v4, v3}, Lcom/graphhopper/reader/osm/WaySegmentParser;->readOSM(Ljava/io/File;Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;Lcom/graphhopper/reader/osm/SkipOptions;)V

    .line 12
    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/StopWatch;->getTimeString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "pass2 - finished, took: {}"

    invoke-interface {v0, p1, v3}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser;->nodeData:Lcom/graphhopper/reader/osm/OSMNodeData;

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/OSMNodeData;->release()V

    .line 14
    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result p0

    float-to-int p0, p0

    .line 15
    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result p1

    float-to-int p1, p1

    .line 16
    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v1

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    const-string v2, "s,  pass2: "

    const-string v3, "s,  total: "

    .line 17
    const-string v4, "Finished reading OSM file. pass1: "

    invoke-static {v4, p0, v2, p1, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can only run way segment parser once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
