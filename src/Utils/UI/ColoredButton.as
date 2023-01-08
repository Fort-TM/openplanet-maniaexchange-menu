namespace UI
{
    bool ColoredButton(const string &in text, float h, float s = 0.6f, float v = 0.6f)
    {
        UI::PushStyleColor(UI::Col::Button, UI::HSV(h, s, v));
        UI::PushStyleColor(UI::Col::ButtonHovered, UI::HSV(h, s + 0.1f, v + 0.1f));
        UI::PushStyleColor(UI::Col::ButtonActive, UI::HSV(h, s + 0.2f, v + 0.2f));
        bool ret = UI::Button(text);
        UI::PopStyleColor(3);
        return ret;
    }

    bool RedButton(const string &in text) { return ColoredButton(text, 0.0f); }
    bool GreenButton(const string &in text) { return ColoredButton(text, 0.33f); }
    bool OrangeButton(const string &in text) { return ColoredButton(text, 0.1f); }
    bool CyanButton(const string &in text) { return ColoredButton(text, 0.5f); }
    bool PurpleButton(const string &in text) { return ColoredButton(text, 0.8f); }
    bool RoseButton(const string &in text) { return ColoredButton(text, 0.9f); }
    bool YellowButton(const string &in text) { return ColoredButton(text, 0.2f); }
    bool GoldButton(const string &in text) { return ColoredButton(text, 0.12f, 1.f, 0.7f); }
}