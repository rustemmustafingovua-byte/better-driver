.class public final enum Lf8/u2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum m:Lf8/u2;

.field public static final enum n:Lf8/u2;

.field public static final enum o:Lf8/u2;

.field public static final enum p:Lf8/u2;

.field public static final enum q:Lf8/u2;

.field public static final synthetic r:[Lf8/u2;


# instance fields
.field public final l:Lf8/t2;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lf8/u2;

    const/4 v0, 0x0

    sget-object v2, Lf8/t2;->p:Lf8/t2;

    const-string v3, "DOUBLE"

    invoke-direct {v1, v3, v0, v2}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v2, Lf8/u2;

    const/4 v0, 0x1

    sget-object v3, Lf8/t2;->o:Lf8/t2;

    const-string v4, "FLOAT"

    invoke-direct {v2, v4, v0, v3}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v3, Lf8/u2;

    sget-object v0, Lf8/t2;->n:Lf8/t2;

    const-string v4, "INT64"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v0}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v4, Lf8/u2;

    const-string v5, "UINT64"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v0}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v5, Lf8/u2;

    sget-object v6, Lf8/t2;->m:Lf8/t2;

    const-string v7, "INT32"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v7, Lf8/u2;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v0}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    move-object v8, v7

    new-instance v7, Lf8/u2;

    const-string v9, "FIXED32"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v6}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    move-object v9, v8

    new-instance v8, Lf8/u2;

    const/4 v10, 0x7

    sget-object v11, Lf8/t2;->q:Lf8/t2;

    const-string v12, "BOOL"

    invoke-direct {v8, v12, v10, v11}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    move-object v10, v9

    new-instance v9, Lf8/u2;

    const/16 v11, 0x8

    sget-object v12, Lf8/t2;->r:Lf8/t2;

    const-string v13, "STRING"

    invoke-direct {v9, v13, v11, v12}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    sput-object v9, Lf8/u2;->m:Lf8/u2;

    move-object v11, v10

    new-instance v10, Lf8/u2;

    sget-object v12, Lf8/t2;->u:Lf8/t2;

    const-string v13, "GROUP"

    const/16 v14, 0x9

    invoke-direct {v10, v13, v14, v12}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    sput-object v10, Lf8/u2;->n:Lf8/u2;

    move-object v13, v11

    new-instance v11, Lf8/u2;

    const-string v14, "MESSAGE"

    const/16 v15, 0xa

    invoke-direct {v11, v14, v15, v12}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    sput-object v11, Lf8/u2;->o:Lf8/u2;

    new-instance v12, Lf8/u2;

    const/16 v14, 0xb

    sget-object v15, Lf8/t2;->s:Lf8/t2;

    move-object/from16 v16, v1

    const-string v1, "BYTES"

    invoke-direct {v12, v1, v14, v15}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    sput-object v12, Lf8/u2;->p:Lf8/u2;

    move-object v1, v13

    new-instance v13, Lf8/u2;

    const-string v14, "UINT32"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v6}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v14, Lf8/u2;

    const/16 v15, 0xd

    move-object/from16 v17, v1

    sget-object v1, Lf8/t2;->t:Lf8/t2;

    move-object/from16 v18, v2

    const-string v2, "ENUM"

    invoke-direct {v14, v2, v15, v1}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    sput-object v14, Lf8/u2;->q:Lf8/u2;

    new-instance v15, Lf8/u2;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    invoke-direct {v15, v1, v2, v6}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v1, Lf8/u2;

    const-string v2, "SFIXED64"

    move-object/from16 v19, v3

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v0}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v2, Lf8/u2;

    const-string v3, "SINT32"

    move-object/from16 v20, v1

    const/16 v1, 0x10

    invoke-direct {v2, v3, v1, v6}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    new-instance v1, Lf8/u2;

    const-string v3, "SINT64"

    const/16 v6, 0x11

    invoke-direct {v1, v3, v6, v0}, Lf8/u2;-><init>(Ljava/lang/String;ILf8/t2;)V

    move-object/from16 v6, v17

    move-object/from16 v3, v19

    move-object/from16 v17, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v20

    filled-new-array/range {v1 .. v18}, [Lf8/u2;

    move-result-object v0

    sput-object v0, Lf8/u2;->r:[Lf8/u2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILf8/t2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lf8/u2;->l:Lf8/t2;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/u2;
    .locals 1

    const-class v0, Lf8/u2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/u2;

    return-object p0
.end method

.method public static values()[Lf8/u2;
    .locals 1

    sget-object v0, Lf8/u2;->r:[Lf8/u2;

    invoke-virtual {v0}, [Lf8/u2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/u2;

    return-object v0
.end method
