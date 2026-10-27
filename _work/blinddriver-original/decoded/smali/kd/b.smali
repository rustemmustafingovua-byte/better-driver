.class public final enum Lkd/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lkd/b;

.field public static final enum m:Lkd/b;

.field public static final enum n:Lkd/b;

.field public static final enum o:Lkd/b;

.field public static final enum p:Lkd/b;

.field public static final enum q:Lkd/b;

.field public static final enum r:Lkd/b;

.field public static final synthetic s:[Lkd/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lkd/b;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkd/b;->l:Lkd/b;

    new-instance v1, Lkd/b;

    const-string v2, "NEED_MOCK_APP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkd/b;->m:Lkd/b;

    new-instance v2, Lkd/b;

    const-string v3, "WAITING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkd/b;->n:Lkd/b;

    new-instance v3, Lkd/b;

    const-string v4, "PASSTHROUGH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkd/b;->o:Lkd/b;

    new-instance v4, Lkd/b;

    const-string v5, "SHARING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lkd/b;->p:Lkd/b;

    new-instance v5, Lkd/b;

    const-string v6, "PROBING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lkd/b;->q:Lkd/b;

    new-instance v6, Lkd/b;

    const-string v7, "ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lkd/b;->r:Lkd/b;

    filled-new-array/range {v0 .. v6}, [Lkd/b;

    move-result-object v0

    sput-object v0, Lkd/b;->s:[Lkd/b;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkd/b;
    .locals 1

    const-class v0, Lkd/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkd/b;

    return-object p0
.end method

.method public static values()[Lkd/b;
    .locals 1

    sget-object v0, Lkd/b;->s:[Lkd/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkd/b;

    return-object v0
.end method
