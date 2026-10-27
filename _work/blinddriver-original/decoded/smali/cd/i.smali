.class public final enum Lcd/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lcd/i;

.field public static final enum m:Lcd/i;

.field public static final synthetic n:[Lcd/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcd/i;

    const-string v1, "METRIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcd/i;->l:Lcd/i;

    new-instance v1, Lcd/i;

    const-string v2, "IMPERIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcd/i;->m:Lcd/i;

    filled-new-array {v0, v1}, [Lcd/i;

    move-result-object v0

    sput-object v0, Lcd/i;->n:[Lcd/i;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcd/i;
    .locals 1

    const-class v0, Lcd/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcd/i;

    return-object p0
.end method

.method public static values()[Lcd/i;
    .locals 1

    sget-object v0, Lcd/i;->n:[Lcd/i;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcd/i;

    return-object v0
.end method
