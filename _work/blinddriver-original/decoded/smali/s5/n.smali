.class public final enum Ls5/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Ls5/n;

.field public static final enum B:Ls5/n;

.field public static final enum C:Ls5/n;

.field public static final enum D:Ls5/n;

.field public static final enum E:Ls5/n;

.field public static final enum F:Ls5/n;

.field public static final synthetic G:[Ls5/n;

.field public static final enum t:Ls5/n;

.field public static final enum u:Ls5/n;

.field public static final enum v:Ls5/n;

.field public static final enum w:Ls5/n;

.field public static final enum x:Ls5/n;

.field public static final enum y:Ls5/n;

.field public static final enum z:Ls5/n;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:[C

.field public final n:[B

.field public final o:I

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ls5/n;

    const/4 v1, -0x1

    const-string v2, "NOT_AVAILABLE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ls5/n;->t:Ls5/n;

    new-instance v1, Ls5/n;

    const/4 v2, 0x1

    const-string v3, "{"

    const-string v5, "START_OBJECT"

    invoke-direct {v1, v5, v2, v3, v2}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Ls5/n;->u:Ls5/n;

    new-instance v2, Ls5/n;

    const/4 v3, 0x2

    const-string v5, "}"

    const-string v6, "END_OBJECT"

    invoke-direct {v2, v6, v3, v5, v3}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Ls5/n;->v:Ls5/n;

    new-instance v3, Ls5/n;

    const/4 v5, 0x3

    const-string v6, "["

    const-string v7, "START_ARRAY"

    invoke-direct {v3, v7, v5, v6, v5}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Ls5/n;->w:Ls5/n;

    new-instance v5, Ls5/n;

    const/4 v6, 0x4

    const-string v7, "]"

    const-string v8, "END_ARRAY"

    invoke-direct {v5, v8, v6, v7, v6}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Ls5/n;->x:Ls5/n;

    move-object v6, v5

    new-instance v5, Ls5/n;

    const-string v7, "FIELD_NAME"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v4, v8}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Ls5/n;->y:Ls5/n;

    move-object v7, v6

    new-instance v6, Ls5/n;

    const-string v8, "VALUE_EMBEDDED_OBJECT"

    const/4 v9, 0x6

    const/16 v10, 0xc

    invoke-direct {v6, v8, v9, v4, v10}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Ls5/n;->z:Ls5/n;

    move-object v8, v7

    new-instance v7, Ls5/n;

    const-string v11, "VALUE_STRING"

    const/4 v12, 0x7

    invoke-direct {v7, v11, v12, v4, v9}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Ls5/n;->A:Ls5/n;

    move-object v9, v8

    new-instance v8, Ls5/n;

    const-string v11, "VALUE_NUMBER_INT"

    const/16 v13, 0x8

    invoke-direct {v8, v11, v13, v4, v12}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Ls5/n;->B:Ls5/n;

    move-object v11, v9

    new-instance v9, Ls5/n;

    const-string v12, "VALUE_NUMBER_FLOAT"

    const/16 v14, 0x9

    invoke-direct {v9, v12, v14, v4, v13}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Ls5/n;->C:Ls5/n;

    new-instance v4, Ls5/n;

    const-string v12, "true"

    const-string v13, "VALUE_TRUE"

    const/16 v15, 0xa

    invoke-direct {v4, v13, v15, v12, v14}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Ls5/n;->D:Ls5/n;

    move-object v12, v4

    move-object v4, v11

    new-instance v11, Ls5/n;

    const-string v13, "false"

    const-string v14, "VALUE_FALSE"

    const/16 v10, 0xb

    invoke-direct {v11, v14, v10, v13, v15}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Ls5/n;->E:Ls5/n;

    move-object v13, v12

    new-instance v12, Ls5/n;

    const-string v14, "VALUE_NULL"

    const-string v15, "null"

    move-object/from16 v16, v0

    const/16 v0, 0xc

    invoke-direct {v12, v14, v0, v15, v10}, Ls5/n;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Ls5/n;->F:Ls5/n;

    move-object v10, v13

    move-object/from16 v0, v16

    filled-new-array/range {v0 .. v12}, [Ls5/n;

    move-result-object v0

    sput-object v0, Ls5/n;->G:[Ls5/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Ls5/n;->l:Ljava/lang/String;

    iput-object p2, p0, Ls5/n;->m:[C

    iput-object p2, p0, Ls5/n;->n:[B

    goto :goto_1

    :cond_0
    iput-object p3, p0, Ls5/n;->l:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Ls5/n;->m:[C

    array-length p2, p2

    new-array p3, p2, [B

    iput-object p3, p0, Ls5/n;->n:[B

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object v0, p0, Ls5/n;->n:[B

    iget-object v1, p0, Ls5/n;->m:[C

    aget-char v1, v1, p3

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput p4, p0, Ls5/n;->o:I

    const/16 p2, 0xa

    if-eq p4, p2, :cond_2

    const/16 p2, 0x9

    :cond_2
    const/4 p2, 0x7

    const/4 p3, 0x1

    if-eq p4, p2, :cond_4

    const/16 p2, 0x8

    if-ne p4, p2, :cond_3

    goto :goto_2

    :cond_3
    move p2, p1

    goto :goto_3

    :cond_4
    :goto_2
    move p2, p3

    :goto_3
    iput-boolean p2, p0, Ls5/n;->r:Z

    if-eq p4, p3, :cond_6

    const/4 p2, 0x3

    if-ne p4, p2, :cond_5

    goto :goto_4

    :cond_5
    move p2, p1

    goto :goto_5

    :cond_6
    :goto_4
    move p2, p3

    :goto_5
    iput-boolean p2, p0, Ls5/n;->p:Z

    const/4 v0, 0x2

    if-eq p4, v0, :cond_8

    const/4 v0, 0x4

    if-ne p4, v0, :cond_7

    goto :goto_6

    :cond_7
    move v0, p1

    goto :goto_7

    :cond_8
    :goto_6
    move v0, p3

    :goto_7
    iput-boolean v0, p0, Ls5/n;->q:Z

    if-nez p2, :cond_9

    if-nez v0, :cond_9

    const/4 p2, 0x5

    if-eq p4, p2, :cond_9

    const/4 p2, -0x1

    if-eq p4, p2, :cond_9

    move p1, p3

    :cond_9
    iput-boolean p1, p0, Ls5/n;->s:Z

    return-void
.end method

.method public static a(Ls5/n;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "<end of input>"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "[Unavailable value]"

    return-object p0

    :pswitch_0
    const-string p0, "Null value"

    return-object p0

    :pswitch_1
    const-string p0, "Boolean value"

    return-object p0

    :pswitch_2
    const-string p0, "Floating-point value"

    return-object p0

    :pswitch_3
    const-string p0, "Integer value"

    return-object p0

    :pswitch_4
    const-string p0, "String value"

    return-object p0

    :pswitch_5
    const-string p0, "Embedded Object value"

    return-object p0

    :pswitch_6
    const-string p0, "Array value"

    return-object p0

    :pswitch_7
    const-string p0, "Object value"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ls5/n;
    .locals 1

    const-class v0, Ls5/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls5/n;

    return-object p0
.end method

.method public static values()[Ls5/n;
    .locals 1

    sget-object v0, Ls5/n;->G:[Ls5/n;

    invoke-virtual {v0}, [Ls5/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls5/n;

    return-object v0
.end method
