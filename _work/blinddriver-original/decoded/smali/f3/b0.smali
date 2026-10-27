.class public final enum Lf3/b0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lf3/b0;

.field public static final enum m:Lf3/b0;

.field public static final synthetic n:[Lf3/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lf3/b0;

    const-string v1, "Inherit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf3/b0;->l:Lf3/b0;

    new-instance v1, Lf3/b0;

    const-string v2, "SecureOn"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf3/b0;->m:Lf3/b0;

    new-instance v2, Lf3/b0;

    const-string v3, "SecureOff"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lf3/b0;

    move-result-object v0

    sput-object v0, Lf3/b0;->n:[Lf3/b0;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf3/b0;
    .locals 1

    const-class v0, Lf3/b0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf3/b0;

    return-object p0
.end method

.method public static values()[Lf3/b0;
    .locals 1

    sget-object v0, Lf3/b0;->n:[Lf3/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf3/b0;

    return-object v0
.end method
