.class public final enum Lmb/z6;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lmb/z6;

.field public static final enum m:Lmb/z6;

.field public static final enum n:Lmb/z6;

.field public static final synthetic o:[Lmb/z6;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmb/z6;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmb/z6;->l:Lmb/z6;

    new-instance v1, Lmb/z6;

    const-string v2, "ENUM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmb/z6;->m:Lmb/z6;

    new-instance v2, Lmb/z6;

    const-string v3, "STRING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lmb/z6;->n:Lmb/z6;

    filled-new-array {v0, v1, v2}, [Lmb/z6;

    move-result-object v0

    sput-object v0, Lmb/z6;->o:[Lmb/z6;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmb/z6;
    .locals 1

    const-class v0, Lmb/z6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmb/z6;

    return-object p0
.end method

.method public static values()[Lmb/z6;
    .locals 1

    sget-object v0, Lmb/z6;->o:[Lmb/z6;

    invoke-virtual {v0}, [Lmb/z6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/z6;

    return-object v0
.end method
