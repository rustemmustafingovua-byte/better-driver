.class public final enum Lr5/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr5/p;

.field public static final enum m:Lr5/p;

.field public static final enum n:Lr5/p;

.field public static final enum o:Lr5/p;

.field public static final enum p:Lr5/p;

.field public static final enum q:Lr5/p;

.field public static final enum r:Lr5/p;

.field public static final enum s:Lr5/p;

.field public static final enum t:Lr5/p;

.field public static final enum u:Lr5/p;

.field public static final synthetic v:[Lr5/p;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lr5/p;

    const-string v1, "BINARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/p;->l:Lr5/p;

    new-instance v1, Lr5/p;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lr5/p;

    const-string v3, "NUMBER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr5/p;->m:Lr5/p;

    new-instance v3, Lr5/p;

    const-string v4, "NUMBER_FLOAT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr5/p;->n:Lr5/p;

    new-instance v4, Lr5/p;

    const-string v5, "NUMBER_INT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lr5/p;->o:Lr5/p;

    new-instance v5, Lr5/p;

    const-string v6, "STRING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lr5/p;->p:Lr5/p;

    new-instance v6, Lr5/p;

    const-string v7, "SCALAR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lr5/p;->q:Lr5/p;

    new-instance v7, Lr5/p;

    const-string v8, "ARRAY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lr5/p;->r:Lr5/p;

    new-instance v8, Lr5/p;

    const-string v9, "OBJECT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lr5/p;->s:Lr5/p;

    new-instance v9, Lr5/p;

    const-string v10, "ANY"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lr5/p;->t:Lr5/p;

    new-instance v10, Lr5/p;

    const-string v11, "NATURAL"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lr5/p;->u:Lr5/p;

    new-instance v11, Lr5/p;

    const-string v12, "POJO"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v11}, [Lr5/p;

    move-result-object v0

    sput-object v0, Lr5/p;->v:[Lr5/p;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/p;
    .locals 1

    const-class v0, Lr5/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/p;

    return-object p0
.end method

.method public static values()[Lr5/p;
    .locals 1

    sget-object v0, Lr5/p;->v:[Lr5/p;

    invoke-virtual {v0}, [Lr5/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/p;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lr5/p;->m:Lr5/p;

    if-eq p0, v0, :cond_1

    sget-object v0, Lr5/p;->o:Lr5/p;

    if-eq p0, v0, :cond_1

    sget-object v0, Lr5/p;->n:Lr5/p;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
