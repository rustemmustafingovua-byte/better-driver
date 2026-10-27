.class public Lorg/maplibre/android/style/types/FormattedSection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private fontScale:Ljava/lang/Number;

.field private fontStack:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/maplibre/android/style/types/FormattedSection;-><init>(Ljava/lang/String;Ljava/lang/Number;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/maplibre/android/style/types/FormattedSection;-><init>(Ljava/lang/String;Ljava/lang/Number;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/maplibre/android/style/types/FormattedSection;-><init>(Ljava/lang/String;Ljava/lang/Number;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/maplibre/android/style/types/FormattedSection;->text:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    .line 5
    iput-object p3, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontStack:[Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/maplibre/android/style/types/FormattedSection;-><init>(Ljava/lang/String;Ljava/lang/Number;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/maplibre/android/style/types/FormattedSection;

    iget-object v2, p0, Lorg/maplibre/android/style/types/FormattedSection;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/maplibre/android/style/types/FormattedSection;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lorg/maplibre/android/style/types/FormattedSection;->text:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontStack:[Ljava/lang/String;

    iget-object v3, p1, Lorg/maplibre/android/style/types/FormattedSection;->fontStack:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    iget-object p0, p1, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    if-nez p0, :cond_8

    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public getFontScale()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    return-object p0
.end method

.method public getFontStack()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontStack:[Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/types/FormattedSection;->text:Ljava/lang/String;

    return-object p0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/style/types/FormattedSection;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontStack:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setFontScale(Ljava/lang/Number;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    return-void
.end method

.method public setFontStack([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontStack:[Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/types/FormattedSection;->setTextColor(Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "font-scale"

    iget-object v2, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "text-font"

    iget-object v2, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontStack:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "text-color"

    iget-object v2, p0, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/maplibre/android/style/types/FormattedSection;->text:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FormattedSection{text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/maplibre/android/style/types/FormattedSection;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontScale:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/android/style/types/FormattedSection;->fontStack:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/maplibre/android/style/types/FormattedSection;->textColor:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
