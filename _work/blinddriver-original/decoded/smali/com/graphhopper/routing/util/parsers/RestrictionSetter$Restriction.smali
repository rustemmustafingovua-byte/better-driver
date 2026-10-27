.class public Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/util/parsers/RestrictionSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Restriction"
.end annotation


# instance fields
.field public final edges:Lcom/carrotsearch/hppc/x;

.field private final viaNode:I


# direct methods
.method private constructor <init>(Lcom/carrotsearch/hppc/x;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->edges:Lcom/carrotsearch/hppc/x;

    .line 4
    iput p2, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->viaNode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/carrotsearch/hppc/x;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;-><init>(Lcom/carrotsearch/hppc/x;I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->viaNode:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->edges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;->viaNode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edges: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", viaNode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
