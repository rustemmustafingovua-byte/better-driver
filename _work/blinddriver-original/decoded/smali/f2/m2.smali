.class public final enum Lf2/m2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic l:[Lf2/m2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lf2/m2;

    const-string v1, "Shown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf2/m2;

    const-string v2, "Hidden"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1}, [Lf2/m2;

    move-result-object v0

    sput-object v0, Lf2/m2;->l:[Lf2/m2;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf2/m2;
    .locals 1

    const-class v0, Lf2/m2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf2/m2;

    return-object p0
.end method

.method public static values()[Lf2/m2;
    .locals 1

    sget-object v0, Lf2/m2;->l:[Lf2/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf2/m2;

    return-object v0
.end method
