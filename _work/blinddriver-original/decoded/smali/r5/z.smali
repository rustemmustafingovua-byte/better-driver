.class public final enum Lr5/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr5/z;

.field public static final enum m:Lr5/z;

.field public static final enum n:Lr5/z;

.field public static final enum o:Lr5/z;

.field public static final enum p:Lr5/z;

.field public static final synthetic q:[Lr5/z;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lr5/z;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/z;->l:Lr5/z;

    new-instance v1, Lr5/z;

    const-string v2, "NON_NULL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr5/z;->m:Lr5/z;

    new-instance v2, Lr5/z;

    const-string v3, "NON_ABSENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lr5/z;

    const-string v4, "NON_EMPTY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr5/z;->n:Lr5/z;

    new-instance v4, Lr5/z;

    const-string v5, "NON_DEFAULT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lr5/z;->o:Lr5/z;

    new-instance v5, Lr5/z;

    const-string v6, "CUSTOM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lr5/z;

    const-string v7, "USE_DEFAULTS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lr5/z;->p:Lr5/z;

    filled-new-array/range {v0 .. v6}, [Lr5/z;

    move-result-object v0

    sput-object v0, Lr5/z;->q:[Lr5/z;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/z;
    .locals 1

    const-class v0, Lr5/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/z;

    return-object p0
.end method

.method public static values()[Lr5/z;
    .locals 1

    sget-object v0, Lr5/z;->q:[Lr5/z;

    invoke-virtual {v0}, [Lr5/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/z;

    return-object v0
.end method
