.class public final enum Lf8/p0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lf8/b4;


# static fields
.field public static final enum A:Lf8/p0;

.field public static final enum B:Lf8/p0;

.field public static final enum C:Lf8/p0;

.field public static final enum D:Lf8/p0;

.field public static final synthetic E:[Lf8/p0;

.field public static final enum m:Lf8/p0;

.field public static final enum n:Lf8/p0;

.field public static final enum o:Lf8/p0;

.field public static final enum p:Lf8/p0;

.field public static final enum q:Lf8/p0;

.field public static final enum r:Lf8/p0;

.field public static final enum s:Lf8/p0;

.field public static final enum t:Lf8/p0;

.field public static final enum u:Lf8/p0;

.field public static final enum v:Lf8/p0;

.field public static final enum w:Lf8/p0;

.field public static final enum x:Lf8/p0;

.field public static final enum y:Lf8/p0;

.field public static final enum z:Lf8/p0;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lf8/p0;

    const-string v0, "TYPE_DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lf8/p0;->m:Lf8/p0;

    new-instance v2, Lf8/p0;

    const-string v0, "TYPE_FLOAT"

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lf8/p0;->n:Lf8/p0;

    new-instance v3, Lf8/p0;

    const-string v0, "TYPE_INT64"

    const/4 v5, 0x3

    invoke-direct {v3, v0, v4, v5}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lf8/p0;->o:Lf8/p0;

    new-instance v4, Lf8/p0;

    const-string v0, "TYPE_UINT64"

    const/4 v6, 0x4

    invoke-direct {v4, v0, v5, v6}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lf8/p0;->p:Lf8/p0;

    new-instance v5, Lf8/p0;

    const-string v0, "TYPE_INT32"

    const/4 v7, 0x5

    invoke-direct {v5, v0, v6, v7}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lf8/p0;->q:Lf8/p0;

    new-instance v6, Lf8/p0;

    const-string v0, "TYPE_FIXED64"

    const/4 v8, 0x6

    invoke-direct {v6, v0, v7, v8}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lf8/p0;->r:Lf8/p0;

    new-instance v7, Lf8/p0;

    const-string v0, "TYPE_FIXED32"

    const/4 v9, 0x7

    invoke-direct {v7, v0, v8, v9}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lf8/p0;->s:Lf8/p0;

    new-instance v8, Lf8/p0;

    const-string v0, "TYPE_BOOL"

    const/16 v10, 0x8

    invoke-direct {v8, v0, v9, v10}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lf8/p0;->t:Lf8/p0;

    new-instance v9, Lf8/p0;

    const-string v0, "TYPE_STRING"

    const/16 v11, 0x9

    invoke-direct {v9, v0, v10, v11}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lf8/p0;->u:Lf8/p0;

    new-instance v10, Lf8/p0;

    const-string v0, "TYPE_GROUP"

    const/16 v12, 0xa

    invoke-direct {v10, v0, v11, v12}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lf8/p0;->v:Lf8/p0;

    new-instance v11, Lf8/p0;

    const-string v0, "TYPE_MESSAGE"

    const/16 v13, 0xb

    invoke-direct {v11, v0, v12, v13}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lf8/p0;->w:Lf8/p0;

    new-instance v12, Lf8/p0;

    const-string v0, "TYPE_BYTES"

    const/16 v14, 0xc

    invoke-direct {v12, v0, v13, v14}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lf8/p0;->x:Lf8/p0;

    new-instance v13, Lf8/p0;

    const-string v0, "TYPE_UINT32"

    const/16 v15, 0xd

    invoke-direct {v13, v0, v14, v15}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lf8/p0;->y:Lf8/p0;

    new-instance v14, Lf8/p0;

    const-string v0, "TYPE_ENUM"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v15, v1}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lf8/p0;->z:Lf8/p0;

    new-instance v15, Lf8/p0;

    const-string v0, "TYPE_SFIXED32"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v15, v0, v1, v2}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lf8/p0;->A:Lf8/p0;

    new-instance v0, Lf8/p0;

    const-string v1, "TYPE_SFIXED64"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf8/p0;->B:Lf8/p0;

    new-instance v1, Lf8/p0;

    const-string v2, "TYPE_SINT32"

    move-object/from16 v19, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v3, v0}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lf8/p0;->C:Lf8/p0;

    new-instance v2, Lf8/p0;

    const-string v3, "TYPE_SINT64"

    move-object/from16 v20, v1

    const/16 v1, 0x12

    invoke-direct {v2, v3, v0, v1}, Lf8/p0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lf8/p0;->D:Lf8/p0;

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v20

    filled-new-array/range {v1 .. v18}, [Lf8/p0;

    move-result-object v0

    sput-object v0, Lf8/p0;->E:[Lf8/p0;

    invoke-static {}, Lf8/p0;->values()[Lf8/p0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lf8/p0;->l:I

    return-void
.end method

.method public static b(I)Lf8/p0;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lf8/p0;->D:Lf8/p0;

    return-object p0

    :pswitch_1
    sget-object p0, Lf8/p0;->C:Lf8/p0;

    return-object p0

    :pswitch_2
    sget-object p0, Lf8/p0;->B:Lf8/p0;

    return-object p0

    :pswitch_3
    sget-object p0, Lf8/p0;->A:Lf8/p0;

    return-object p0

    :pswitch_4
    sget-object p0, Lf8/p0;->z:Lf8/p0;

    return-object p0

    :pswitch_5
    sget-object p0, Lf8/p0;->y:Lf8/p0;

    return-object p0

    :pswitch_6
    sget-object p0, Lf8/p0;->x:Lf8/p0;

    return-object p0

    :pswitch_7
    sget-object p0, Lf8/p0;->w:Lf8/p0;

    return-object p0

    :pswitch_8
    sget-object p0, Lf8/p0;->v:Lf8/p0;

    return-object p0

    :pswitch_9
    sget-object p0, Lf8/p0;->u:Lf8/p0;

    return-object p0

    :pswitch_a
    sget-object p0, Lf8/p0;->t:Lf8/p0;

    return-object p0

    :pswitch_b
    sget-object p0, Lf8/p0;->s:Lf8/p0;

    return-object p0

    :pswitch_c
    sget-object p0, Lf8/p0;->r:Lf8/p0;

    return-object p0

    :pswitch_d
    sget-object p0, Lf8/p0;->q:Lf8/p0;

    return-object p0

    :pswitch_e
    sget-object p0, Lf8/p0;->p:Lf8/p0;

    return-object p0

    :pswitch_f
    sget-object p0, Lf8/p0;->o:Lf8/p0;

    return-object p0

    :pswitch_10
    sget-object p0, Lf8/p0;->n:Lf8/p0;

    return-object p0

    :pswitch_11
    sget-object p0, Lf8/p0;->m:Lf8/p0;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/p0;
    .locals 1

    const-class v0, Lf8/p0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/p0;

    return-object p0
.end method

.method public static values()[Lf8/p0;
    .locals 1

    sget-object v0, Lf8/p0;->E:[Lf8/p0;

    invoke-virtual {v0}, [Lf8/p0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/p0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lf8/p0;->l:I

    return p0
.end method
