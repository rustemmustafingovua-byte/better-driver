.class public final enum Lg8/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lg8/a;

.field public static final enum m:Lg8/a;

.field public static final enum n:Lg8/a;

.field public static final enum o:Lg8/a;

.field public static final enum p:Lg8/a;

.field public static final enum q:Lg8/a;

.field public static final enum r:Lg8/a;

.field public static final synthetic s:[Lg8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lg8/a;

    const-string v0, "ERROR_CORRECTION"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg8/a;->l:Lg8/a;

    new-instance v2, Lg8/a;

    const-string v0, "CHARACTER_SET"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg8/a;->m:Lg8/a;

    new-instance v3, Lg8/a;

    const-string v0, "DATA_MATRIX_SHAPE"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lg8/a;

    const-string v0, "DATA_MATRIX_COMPACT"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lg8/a;

    const-string v0, "MIN_SIZE"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lg8/a;

    const-string v0, "MAX_SIZE"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lg8/a;

    const-string v0, "MARGIN"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg8/a;->n:Lg8/a;

    new-instance v8, Lg8/a;

    const-string v0, "PDF417_COMPACT"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lg8/a;

    const-string v0, "PDF417_COMPACTION"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lg8/a;

    const-string v0, "PDF417_DIMENSIONS"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lg8/a;

    const-string v0, "PDF417_AUTO_ECI"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lg8/a;

    const-string v0, "AZTEC_LAYERS"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lg8/a;

    const-string v0, "QR_VERSION"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg8/a;->o:Lg8/a;

    new-instance v14, Lg8/a;

    const-string v0, "QR_MASK_PATTERN"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lg8/a;->p:Lg8/a;

    new-instance v15, Lg8/a;

    const-string v0, "QR_COMPACT"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg8/a;->q:Lg8/a;

    new-instance v0, Lg8/a;

    const-string v1, "GS1_FORMAT"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg8/a;->r:Lg8/a;

    new-instance v1, Lg8/a;

    const-string v2, "FORCE_CODE_SET"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lg8/a;

    const-string v2, "FORCE_C40"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lg8/a;

    const-string v2, "CODE128_COMPACT"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    filled-new-array/range {v1 .. v19}, [Lg8/a;

    move-result-object v0

    sput-object v0, Lg8/a;->s:[Lg8/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg8/a;
    .locals 1

    const-class v0, Lg8/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg8/a;

    return-object p0
.end method

.method public static values()[Lg8/a;
    .locals 1

    sget-object v0, Lg8/a;->s:[Lg8/a;

    invoke-virtual {v0}, [Lg8/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg8/a;

    return-object v0
.end method
