.class public final enum Lvc/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lvc/a;

.field public static final enum m:Lvc/a;

.field public static final enum n:Lvc/a;

.field public static final enum o:Lvc/a;

.field public static final enum p:Lvc/a;

.field public static final enum q:Lvc/a;

.field public static final enum r:Lvc/a;

.field public static final enum s:Lvc/a;

.field public static final synthetic t:[Lvc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lvc/a;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvc/a;->l:Lvc/a;

    new-instance v1, Lvc/a;

    const-string v2, "UNSUPPORTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvc/a;->m:Lvc/a;

    new-instance v2, Lvc/a;

    const-string v3, "NO_ADB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lvc/a;->n:Lvc/a;

    new-instance v3, Lvc/a;

    const-string v4, "AUTHORIZING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvc/a;->o:Lvc/a;

    new-instance v4, Lvc/a;

    const-string v5, "STARTING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lvc/a;->p:Lvc/a;

    new-instance v5, Lvc/a;

    const-string v6, "CONNECTING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lvc/a;->q:Lvc/a;

    new-instance v6, Lvc/a;

    const-string v7, "STREAMING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lvc/a;->r:Lvc/a;

    new-instance v7, Lvc/a;

    const-string v8, "ERROR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lvc/a;->s:Lvc/a;

    filled-new-array/range {v0 .. v7}, [Lvc/a;

    move-result-object v0

    sput-object v0, Lvc/a;->t:[Lvc/a;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvc/a;
    .locals 1

    const-class v0, Lvc/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvc/a;

    return-object p0
.end method

.method public static values()[Lvc/a;
    .locals 1

    sget-object v0, Lvc/a;->t:[Lvc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvc/a;

    return-object v0
.end method
