.class public final enum Lt6/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lt6/f;

.field public static final enum m:Lt6/f;

.field public static final enum n:Lt6/f;

.field public static final enum o:Lt6/f;

.field public static final enum p:Lt6/f;

.field public static final enum q:Lt6/f;

.field public static final enum r:Lt6/f;

.field public static final enum s:Lt6/f;

.field public static final enum t:Lt6/f;

.field public static final enum u:Lt6/f;

.field public static final enum v:Lt6/f;

.field public static final enum w:Lt6/f;

.field public static final enum x:Lt6/f;

.field public static final synthetic y:[Lt6/f;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lt6/f;

    const-string v1, "Array"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt6/f;->l:Lt6/f;

    new-instance v1, Lt6/f;

    const-string v2, "Collection"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt6/f;->m:Lt6/f;

    new-instance v2, Lt6/f;

    const-string v3, "Map"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lt6/f;->n:Lt6/f;

    new-instance v3, Lt6/f;

    const-string v4, "POJO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lt6/f;->o:Lt6/f;

    new-instance v4, Lt6/f;

    const-string v5, "Untyped"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lt6/f;->p:Lt6/f;

    new-instance v5, Lt6/f;

    const-string v6, "Integer"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lt6/f;->q:Lt6/f;

    new-instance v6, Lt6/f;

    const-string v7, "Float"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lt6/f;->r:Lt6/f;

    new-instance v7, Lt6/f;

    const-string v8, "Boolean"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lt6/f;->s:Lt6/f;

    new-instance v8, Lt6/f;

    const-string v9, "Enum"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lt6/f;->t:Lt6/f;

    new-instance v9, Lt6/f;

    const-string v10, "Textual"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lt6/f;->u:Lt6/f;

    new-instance v10, Lt6/f;

    const-string v11, "Binary"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lt6/f;->v:Lt6/f;

    new-instance v11, Lt6/f;

    const-string v12, "DateTime"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lt6/f;->w:Lt6/f;

    new-instance v12, Lt6/f;

    const-string v13, "OtherScalar"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lt6/f;->x:Lt6/f;

    filled-new-array/range {v0 .. v12}, [Lt6/f;

    move-result-object v0

    sput-object v0, Lt6/f;->y:[Lt6/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt6/f;
    .locals 1

    const-class v0, Lt6/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt6/f;

    return-object p0
.end method

.method public static values()[Lt6/f;
    .locals 1

    sget-object v0, Lt6/f;->y:[Lt6/f;

    invoke-virtual {v0}, [Lt6/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt6/f;

    return-object v0
.end method
