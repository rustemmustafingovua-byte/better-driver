.class public final enum Lcom/graphhopper/json/Statement$Keyword;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/json/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keyword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/json/Statement$Keyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/json/Statement$Keyword;

.field public static final enum ELSE:Lcom/graphhopper/json/Statement$Keyword;

.field public static final enum ELSEIF:Lcom/graphhopper/json/Statement$Keyword;

.field public static final enum IF:Lcom/graphhopper/json/Statement$Keyword;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/json/Statement$Keyword;
    .locals 3

    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    sget-object v1, Lcom/graphhopper/json/Statement$Keyword;->ELSEIF:Lcom/graphhopper/json/Statement$Keyword;

    sget-object v2, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    filled-new-array {v0, v1, v2}, [Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/graphhopper/json/Statement$Keyword;

    const/4 v1, 0x0

    const-string v2, "if"

    const-string v3, "IF"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/json/Statement$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/graphhopper/json/Statement$Keyword;->IF:Lcom/graphhopper/json/Statement$Keyword;

    new-instance v0, Lcom/graphhopper/json/Statement$Keyword;

    const/4 v1, 0x1

    const-string v2, "else_if"

    const-string v3, "ELSEIF"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/json/Statement$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/graphhopper/json/Statement$Keyword;->ELSEIF:Lcom/graphhopper/json/Statement$Keyword;

    new-instance v0, Lcom/graphhopper/json/Statement$Keyword;

    const/4 v1, 0x2

    const-string v2, "else"

    const-string v3, "ELSE"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/json/Statement$Keyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/graphhopper/json/Statement$Keyword;->ELSE:Lcom/graphhopper/json/Statement$Keyword;

    invoke-static {}, Lcom/graphhopper/json/Statement$Keyword;->$values()[Lcom/graphhopper/json/Statement$Keyword;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/json/Statement$Keyword;->$VALUES:[Lcom/graphhopper/json/Statement$Keyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/graphhopper/json/Statement$Keyword;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/json/Statement$Keyword;
    .locals 1

    const-class v0, Lcom/graphhopper/json/Statement$Keyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/json/Statement$Keyword;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/json/Statement$Keyword;
    .locals 1

    sget-object v0, Lcom/graphhopper/json/Statement$Keyword;->$VALUES:[Lcom/graphhopper/json/Statement$Keyword;

    invoke-virtual {v0}, [Lcom/graphhopper/json/Statement$Keyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/json/Statement$Keyword;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/json/Statement$Keyword;->name:Ljava/lang/String;

    return-object p0
.end method
