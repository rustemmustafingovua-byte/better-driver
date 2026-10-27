.class public final enum Lcom/graphhopper/reader/ReaderElement$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/ReaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/reader/ReaderElement$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/reader/ReaderElement$Type;

.field public static final enum FILEHEADER:Lcom/graphhopper/reader/ReaderElement$Type;

.field public static final enum NODE:Lcom/graphhopper/reader/ReaderElement$Type;

.field public static final enum RELATION:Lcom/graphhopper/reader/ReaderElement$Type;

.field public static final enum WAY:Lcom/graphhopper/reader/ReaderElement$Type;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/reader/ReaderElement$Type;
    .locals 4

    sget-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->NODE:Lcom/graphhopper/reader/ReaderElement$Type;

    sget-object v1, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    sget-object v2, Lcom/graphhopper/reader/ReaderElement$Type;->RELATION:Lcom/graphhopper/reader/ReaderElement$Type;

    sget-object v3, Lcom/graphhopper/reader/ReaderElement$Type;->FILEHEADER:Lcom/graphhopper/reader/ReaderElement$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/reader/ReaderElement$Type;

    const-string v1, "NODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/reader/ReaderElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->NODE:Lcom/graphhopper/reader/ReaderElement$Type;

    new-instance v0, Lcom/graphhopper/reader/ReaderElement$Type;

    const-string v1, "WAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/reader/ReaderElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    new-instance v0, Lcom/graphhopper/reader/ReaderElement$Type;

    const-string v1, "RELATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/reader/ReaderElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->RELATION:Lcom/graphhopper/reader/ReaderElement$Type;

    new-instance v0, Lcom/graphhopper/reader/ReaderElement$Type;

    const-string v1, "FILEHEADER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/reader/ReaderElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->FILEHEADER:Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-static {}, Lcom/graphhopper/reader/ReaderElement$Type;->$values()[Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->$VALUES:[Lcom/graphhopper/reader/ReaderElement$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/reader/ReaderElement$Type;
    .locals 1

    const-class v0, Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/reader/ReaderElement$Type;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/reader/ReaderElement$Type;
    .locals 1

    sget-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->$VALUES:[Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-virtual {v0}, [Lcom/graphhopper/reader/ReaderElement$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/reader/ReaderElement$Type;

    return-object v0
.end method
