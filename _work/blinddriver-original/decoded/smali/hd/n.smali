.class public final enum Lhd/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lhd/n;

.field public static final enum m:Lhd/n;

.field public static final enum n:Lhd/n;

.field public static final synthetic o:[Lhd/n;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lhd/n;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhd/n;->l:Lhd/n;

    new-instance v1, Lhd/n;

    const-string v2, "INITIALIZING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhd/n;->m:Lhd/n;

    new-instance v2, Lhd/n;

    const-string v3, "STREAMING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lhd/n;->n:Lhd/n;

    new-instance v3, Lhd/n;

    const-string v4, "RECONNECTING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lhd/n;

    move-result-object v0

    sput-object v0, Lhd/n;->o:[Lhd/n;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhd/n;
    .locals 1

    const-class v0, Lhd/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhd/n;

    return-object p0
.end method

.method public static values()[Lhd/n;
    .locals 1

    sget-object v0, Lhd/n;->o:[Lhd/n;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhd/n;

    return-object v0
.end method
